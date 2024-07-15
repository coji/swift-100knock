//
//  View025.swift
//  swift-100knock
//
//  Created by coji on 2024/07/13.
//

import SwiftUI

struct View025: View {
  @State var text = "Hello, World!"
  var body: some View {
    NavigationStack {
      Text(text)
      NavigationLink(
        destination: SecondView(callback: self.myFunc)
      ) {
        Text("Go to Second View")
      }
      .navigationTitle("First View")
    }
  }

  func myFunc() {
    text = "Hi, Swift!"
  }
}

private struct SecondView: View {
  var callback: () -> Void
  var body: some View {
    NavigationStack {
      Button("hoge", action: { callback() })
        .navigationTitle("Second View")
    }
  }
}

#Preview {
  View025()
}
