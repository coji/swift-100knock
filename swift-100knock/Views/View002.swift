//
//  View002.swift
//  swift-100knock
//
//  Created by coji on 2024/07/09.
//

import SwiftUI

struct View002: View {
  var body: some View {
    VStack {
      Image("Monalisa")
        .resizable()
        .scaledToFill()
        .frame(width: 150, height: 200, alignment: .center)
        .clipped()
      Text("Mona Lisa")
    }
  }
}

#Preview {
  View002()
}
