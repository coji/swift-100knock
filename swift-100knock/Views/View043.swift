//
//  View043.swift
//  swift-100knock
//
//  Created by coji on 2024/07/18.
//

import SwiftUI

struct View043: View {
  @State private var repositories: [Repository] = []
  @State var page = 1
  @State var isFetching = false
  @State private var showingErrorAlert = false
  private let githubApi = GithubApi()

  var body: some View {
    VStack {
      List(repositories) { repository in
        VStack(alignment: .leading) {
          Text(repository.name).font(.headline)
          Text(repository.description ?? "").font(.body)
          Text("Star: \(repository.stargazersCount)").font(.caption)
        }
        .onAppear {
          if repositories.last == repository {
            print("last")
            fetchRepositories()
          }
        }

      }
      HStack {
        if isFetching {
          Spacer()
          ProgressView()
          Spacer()
        }
      }
    }
    .onAppear {
      fetchRepositories()
    }.alert("Error", isPresented: $showingErrorAlert) {
      Button("OK", action: {})
    } message: {
      Text("Failed to fetch repositories")
    }
  }

  @MainActor
  private func fetchRepositories() {
    if isFetching {
      return
    }
    isFetching = true

    Task {
      do {
        let resultRepositories = try await githubApi.searchRepos(page: page, perPage: 20)
        repositories += resultRepositories
        page += 1
        isFetching = false
      } catch {
        showingErrorAlert = true
        isFetching = false
      }
    }
  }
}

private struct GithubApi {
  func searchRepos(page: Int, perPage: Int) async throws -> [Repository] {
    let url = URL(
      string:
        "https://api.github.com/search/repositories?q=swift&sort=starts&page=\(page)&per_page=\(perPage)"
    )!
    let (data, _) = try await URLSession.shared.data(from: url)
    let response = try JSONDecoder().decode(GithubSearchResult.self, from: data)
    return response.items
  }
}

private struct GithubSearchResult: Codable {
  var items: [Repository]
}

private struct Repository: Identifiable, Codable, Equatable {
  let id: Int
  let name: String
  let description: String?
  let stargazersCount: Int

  enum CodingKeys: String, CodingKey {
    case id
    case name
    case description
    case stargazersCount = "stargazers_count"
  }
}

#Preview {
  View043()
}
