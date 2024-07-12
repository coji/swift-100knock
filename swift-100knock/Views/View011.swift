//
//  View011.swift
//  swift-100knock
//
//  Created by coji on 2024/07/12.
//

import SwiftUI

struct View011: View {
  let fruites = ["Apple", "Banana", "Orange"]

  var body: some View {
    NavigationStack {
      List(fruites, id: \.self) { fruit in
        NavigationLink(fruit) {
          SecondView(fruit: fruit)
        }
      }
      .navigationTitle("詳細ビューに値を渡す")
    }
  }
}

private struct SecondView: View {
  let fruit: String
  var body: some View {
    Text(fruit)
      .font(.largeTitle)
      .navigationTitle("詳細ビュー")
  }
}

#Preview {
  View011()
}
