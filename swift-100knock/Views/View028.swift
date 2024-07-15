//
//  View028.swift
//  swift-100knock
//
//  Created by coji on 2024/07/15.
//

import SwiftUI

struct View028: View {
  @State private var isPresented = false
  var body: some View {
    VStack {
      Text("Sheetを表示する")
        .font(.title)
      Button(
        "Open",
        action: {
          isPresented = true
        })
    }
    .sheet(isPresented: $isPresented) {
      Text("Hello, Sheet!")
      Button(
        "Close",
        action: {
          isPresented = false
        })
    }
  }
}

#Preview {
  View028()
}
