//
//  View021.swift
//  swift-100knock
//
//  Created by coji on 2024/07/13.
//

import SwiftUI

struct View021: View {
  var body: some View {
    Text("Hello")
    CardView(color: Color.red) {
      Text("Hoge")
    }

    CardView(color: Color.accentColor, radius: 50) {
      Text("Fuga")
    }

    CardView {
      VStack {
        Text("ABC")
        Button(
          "OK",
          action: {
          })
      }
    }
  }
}
private struct CardView<Content>: View where Content: View {
  let color: Color
  let radius: CGFloat
  let content: () -> Content

  init(
    color: Color = Color.gray.opacity(0.4),
    radius: CGFloat = 8,
    @ViewBuilder content: @escaping () -> Content
  ) {
    self.content = content
    self.color = color
    self.radius = radius
  }

  var body: some View {
    content()
      .padding(16)
      .background(Color.white)
      .cornerRadius(radius)
      .shadow(color: color, radius: radius, x: 4, y: 4)
      .padding(radius + 8)
  }
}

#Preview {
  View021()
}
