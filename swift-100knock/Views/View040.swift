//
//  View040.swift
//  swift-100knock
//
//  Created by coji on 2024/07/18.
//

import SwiftUI

struct View040: View {
  private var markdown =
    "**Monalisa** is the **most** famous painting!\n[About Monalisa](https://example.com)"
  var body: some View {
    Text(LocalizedStringKey(markdown))
      .tint(Color.red)
  }
}

#Preview {
  View040()
}
