//
//  View014.swift
//  swift-100knock
//
//  Created by coji on 2024/07/12.
//

import SwiftUI

struct View014: View {
  @State var showingAlert = false
  var body: some View {
    Button(
      "Show Alert",
      action: {
        showingAlert = true
      }
    ).alert(
      "Alert Title", isPresented: $showingAlert,
      actions: {
        Button("Done", role: .none) {
          print("Done")
        }
        Button("Cancel", role: .cancel) {
          print("Cancel")
        }

      },
      message: {
        Text("Alert Message")
      })
  }
}

#Preview {
  View014()
}
