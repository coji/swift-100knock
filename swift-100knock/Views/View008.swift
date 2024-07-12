//
//  View008.swift
//  swift-100knock
//
//  Created by coji on 2024/07/12.
//

import SwiftUI

struct View008: View {
  @State private var text = "Hello"

  var body: some View {
    VStack {
      Text(text)
      Button(
        "Click Here",
        action: {
          text = "World"
        })
    }
  }
}

#Preview {
  View008()
}
