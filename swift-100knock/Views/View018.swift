//
//  View018.swift
//  swift-100knock
//
//  Created by coji on 2024/07/13.
//

import SwiftUI

struct View018: View {
  @State private var isActive = false

  var body: some View {
    NavigationStack {
      Button(
        "Tap Me!!",
        action: {
          isActive = true
        }
      )
      .navigationDestination(isPresented: $isActive) {
        VStack {
          Text("Second View")
          Button("OK", action: { isActive = false })
        }
      }
    }
  }
}

#Preview {
  View018()
}
