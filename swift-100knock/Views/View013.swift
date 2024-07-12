//
//  View013.swift
//  swift-100knock
//
//  Created by coji on 2024/07/12.
//

import SwiftUI

struct View013: View {
  var body: some View {
    List {
      Section("Fruits") {
        Text("Apple")
        Text("Banana")
        Text("Cherry")
      }
      Section("Vegetables") {
        Text("Asparagus")
        Text("Broccoli")
        Text("Carrot")
      }
    }
    .listStyle(.plain)
    .navigationTitle("Plain List")
  }
}

#Preview {
  View013()
}
