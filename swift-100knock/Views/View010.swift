//
//  View009.swift
//  swift-100knock
//
//  Created by coji on 2024/07/12.
//

import SwiftUI

struct View010: View {
  var body: some View {
    VStack {
      List {
        Section("Fruits") {
          Text("Apple")
          Text("Banana")
          Text("Orange")
        }
        Section("Juices") {
          Text("Apple Juice")
          Text("Banana Juice")
          Text("Orange Juice")
        }
      }
      .listStyle(.grouped)
    }
  }
}

#Preview {
  View010()
}
