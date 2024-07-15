//
//  View030.swift
//  swift-100knock
//
//  Created by coji on 2024/07/15.
//

import SwiftUI

struct View030: View {
  var body: some View {
    NavigationStack {
      Text("NavigationBar を隠す")
        .font(.title)
        .navigationTitle("NavigationBar を隠す")
        .toolbar(.hidden)
    }
  }
}

#Preview {
  View030()
}
