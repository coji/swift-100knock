//
//  View024.swift
//  swift-100knock
//
//  Created by coji on 2024/07/13.
//

import SwiftUI

struct View024: View {
  @State private var fruits = ["Apple", "Banana", "Orange", "Peach", "Strawberry"]
  @State private var alertShowing = false
  @State private var currentFruit: String?

  var body: some View {
    NavigationStack {
      List {
        ForEach(fruits, id: \.self) { fruit in
          Button(
            fruit,
            action: {
              currentFruit = fruit
              alertShowing = true
            })
        }
      }
      .alert("フルーツ！", isPresented: $alertShowing) {
        Button("OK", role: .none, action: {})
      } message: {
        Text(currentFruit ?? "none")
      }
    }
  }
}

#Preview {
  View024()
}
