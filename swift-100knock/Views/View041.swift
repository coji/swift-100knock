//
//  View041.swift
//  swift-100knock
//
//  Created by coji on 2024/07/18.
//

import SwiftUI

struct View041: View {
  @State private var repositories: [Repository] = []
  @State private var showingErorrAlert = false
  private let githubApiRepository = GithubApiRepository()

  var body: some View {
    NavigationStack {
      if repositories.isEmpty {
        ProgressView()
      }

      List(repositories) { repository in
        VStack(alignment: .leading) {
          Text(repository.name).font(.headline)
          Text(repository.description ?? "").font(.body)
          Text("Star: \(repository.stargazersCount)").font(.headline)
        }
      }
    }
    .onAppear {
      fetchRepositories()
    }
    .alert("Error", isPresented: $showingErorrAlert) {
      Button("OK", action: {})
    } message: {
      Text("Failed to fetch repositories")
    }
  }

  @MainActor
  func fetchRepositories() {
    Task {
      do {
        repositories = try await githubApiRepository.searchRepos(page: 1, perPage: 20)
      } catch {
        showingErorrAlert = true
      }
    }
  }
}

private struct GithubApiRepository {
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
  let items: [Repository]
}

private struct Repository: Codable, Identifiable, Equatable {
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
  View041()
}
