//
//  View005.swift
//  swift-100knock
//
//  Created by coji on 2024/07/10.
//

import SwiftUI

struct View005: View {
  var body: some View {
    NavigationStack {
      VStack {
        Image("Monalisa")
          .resizable()
          .scaledToFit()
          .cornerRadius(10)
          .frame(width: 80, height: 120)
        Text("Mona Lisa")
      }
      .navigationBarTitleDisplayMode(.large)
      .navigationTitle("Mona Lisa")
    }
  }
}

#Preview {
  View005()
}
