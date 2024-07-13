//
//  View025.swift
//  swift-100knock
//
//  Created by coji on 2024/07/13.
//

import SwiftUI

protocol MyProtocol {
  func myFunc()
}

struct View025: View, MyProtocol {
  @State var text = "Hello, World!"
  var body: some View {
    NavigationStack {
      Text(text)
      NavigationLink(
        destination: SecondView(delegate: self)
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
  var delegate: MyProtocol
  var body: some View {
    NavigationStack {
      Button("hoge", action: { delegate.myFunc() })
        .navigationTitle("Second View")
    }
  }
}

#Preview {
  View025()
}
