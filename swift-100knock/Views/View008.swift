//
//  View007.swift
//  swift-100knock
//
//  Created by coji on 2024/07/11.
//

import SwiftUI

struct View008: View {
  var body: some View {
    TabView {
      VStack {
        Image("Monalisa")
          .resizable()
          .scaledToFit()
        Text("Mona Lisa")
      }
      .tabItem {
        Image(systemName: "star")
        Text("Mona Lisa")
      }
      Text("Hello")
        .tabItem {
          Image(systemName: "star.fill")
          Text("Hello")
        }
      Text("World!")
        .tabItem {
          Image(systemName: "star.circle")
          Text("World!")
        }
    }
    .font(.headline)
  }
}

#Preview {
  View008()
}
