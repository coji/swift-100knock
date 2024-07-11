//
//  View007.swift
//  swift-100knock
//
//  Created by coji on 2024/07/11.
//

import SwiftUI

struct View007: View {
  var body: some View {
    TabView {
      Text("Helo")
        .tabItem {
          Image(systemName: "star")
          Text("Hello!")
        }
      Text("World")
        .tabItem {
          Image(systemName: "star.fill")
          Text("World!")
        }
      Text("Swift")
        .tabItem {
          Image(systemName: "star.circle")
          Text("Swift!")
        }
    }
  }
}

#Preview {
  View007()
}
