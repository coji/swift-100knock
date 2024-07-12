//
//  View016.swift
//  swift-100knock
//
//  Created by coji on 2024/07/12.
//

import SwiftUI

struct View016: View {
  @State var message = "Hello"
  var body: some View {
    VStack {
      Button(action: {
        message = "Mona Lisa"
      }) {
        HStack {
          Image("Monalisa")
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .padding()
          Text("Tap Me!")
        }
        .padding()
        .border(Color.gray, width: 2)
      }
      .buttonStyle(PlainButtonStyle())
      Text(message)
    }
  }
}

#Preview {
  View016()
}
