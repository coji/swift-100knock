//
//  View015.swift
//  swift-100knock
//
//  Created by coji on 2024/07/12.
//

import SwiftUI

struct View015: View {
  @State var showingAlert = false
  @State var alertItem: AlertItem?

  var body: some View {
    HStack {
      Button(
        "Apple",
        action: {
          alertItem = AlertItem(buttonTitle: "Apple", message: "This is an alert from Apple")
          showingAlert = true
        })
      Button(
        "Banana",
        action: {
          alertItem = AlertItem(buttonTitle: "Banana", message: "This is an alert from Banana")
          showingAlert = true
        })
    }.alert("Alert Title", isPresented: $showingAlert, presenting: alertItem) { alertItem in
      Button(alertItem.buttonTitle, role: .none) {
        print("None \(alertItem.buttonTitle)")
      }
      Button("キャンセル", role: .cancel) {
        print("Cancel \(alertItem.buttonTitle)")
      }
    } message: { alertItem in
      Text(alertItem.message)
    }
  }
}

struct AlertItem {
  var buttonTitle: String
  var message: String
}

#Preview {
  View015()
}
