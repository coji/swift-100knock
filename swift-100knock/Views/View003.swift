//
//  View003.swift
//  swift-100knock
//
//  Created by coji on 2024/07/09.
//

import SwiftUI

struct View003: View {
  var body: some View {
    Image("Monalisa")
      .resizable()
      .scaledToFill()
      .frame(width: 150, height: 150)
      .cornerRadius(75)
      .overlay {
        RoundedRectangle(cornerRadius: 75)
          .stroke(Color.red, lineWidth: 4)
      }
      .overlay(alignment: .bottom) {
        Text("Mona Lisa")
          .foregroundStyle(Color.red)
          .padding()
          .shadow(radius: /*@START_MENU_TOKEN@*/ 10 /*@END_MENU_TOKEN@*/)
      }
  }
}

#Preview {
  View003()
}
