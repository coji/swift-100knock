//
//  View020.swift
//  swift-100knock
//
//  Created by coji on 2024/07/13.
//

import SwiftUI

struct View020: View {
  var body: some View {
    VStack {
      Text("Hello")
        .font(.system(size: 50).bold())
        .foregroundStyle(Color.gray)
        + Text(" ❤️ ").font(.system(size: 50).bold()).foregroundStyle(Color.red)
        + Text("World\n").font(.system(size: 50).bold())
        + Text("こんにちは!\n").font(.system(size: 20).bold()).foregroundStyle(Color.blue)
        + Text("世界！").font(.system(size: 20).bold()).foregroundStyle(Color.green)
    }

  }
}

#Preview {
  View020()
}
