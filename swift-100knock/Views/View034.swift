//
//  View034.swift
//  swift-100knock
//
//  Created by coji on 2024/07/18.
//

import SwiftUI

struct ImageView: View {
  var imageName: String
  var body: some View {
    Image(imageName)
      .resizable()
      .scaledToFit()
      .frame(width: .infinity, height: .infinity)
  }
}

struct View034: View {
  var body: some View {
    TabView {
      ImageView(imageName: "Monalisa")
      ImageView(imageName: "Delacroix")
      ImageView(imageName: "Millet")
      ImageView(imageName: "Pearl")
      ImageView(imageName: "Venus")
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.black)
    .tabViewStyle(.page)
    .menuIndicator(.visible)
  }
}

#Preview {
  View034()
}
