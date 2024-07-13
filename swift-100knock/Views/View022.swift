//
//  View022.swift
//  swift-100knock
//
//  Created by coji on 2024/07/13.
//

import SwiftUI

struct View022: View {
  var body: some View {
    VStack {
      Text("hoge")
        .card()

      Text("わいわい")
        .card(color: Color.red)

      Text("ほげほげ")
        .card(color: Color.blue.opacity(0.4), radius: 50)

      VStack {
        Text("ABC")
        Button("OK", action: {})
      }.card(color: Color.green, radius: 100)
    }.padding()
  }
}

private struct CardViewModifier: ViewModifier {
  let color: Color
  let radius: CGFloat
  func body(content: Content) -> some View {
    content
      .padding(16)
      .background(Color.white)
      .cornerRadius(radius)
      .shadow(color: color, radius: radius, x: 4, y: 4)
      .padding(radius + 8)
  }
}

extension View {
  fileprivate func card(
    color: Color = Color.gray.opacity(0.4),
    radius: CGFloat = 8
  ) -> some View {
    modifier(CardViewModifier(color: color, radius: radius))
  }
}

#Preview {
  View022()
}
