//
//  View017.swift
//  swift-100knock
//
//  Created by coji on 2024/07/13.
//

import SwiftUI

struct View017: View {
  @State private var input = ""
  @State private var alertShowing = false
  @State private var sheetShowing = false

  var body: some View {
    NavigationStack {
      VStack {
        TextField("Input number of others", text: $input)
          .textFieldStyle(.roundedBorder)
          .padding()
        Button(
          "Show Sheet",
          action: {
            guard Double(input) != nil else {
              // 数値以外でアラート表示
              alertShowing = true
              return
            }
            // 数値だとシートを表示
            sheetShowing = true
          })
      }
      .alert("エラー", isPresented: $alertShowing) {
        Button("OK", role: .none) {
          alertShowing = false
        }
      } message: {
        Text("数値を入力してください")
      }
      .sheet(isPresented: $sheetShowing) {
        Text(input)
      }
      .navigationTitle("017 数値入力でシート、それ以外でアラートを表示")
    }
  }
}

#Preview {
  View017()
}
