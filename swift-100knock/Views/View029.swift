//
//  View029.swift
//  swift-100knock
//
//  Created by coji on 2024/07/15.
//

import SwiftUI

struct View029: View {
  @State private var isPresented = false
  var body: some View {
    VStack {
      Text("Sheetを全画面で表示する")
        .font(.title)
      Button(
        "Open",
        action: {
          isPresented = true
        })
    }
    .fullScreenCover(isPresented: $isPresented) {
      VStack {
        Text("Hello, Full Screen Cover!")
        Button(
          "Close",
          action: {
            isPresented = false
          })
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color.red)
      .onTapGesture {
        isPresented = false
      }
    }
  }
}

#Preview {
  View029()
}
