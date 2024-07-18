//
//  View035.swift
//  swift-100knock
//
//  Created by coji on 2024/07/18.
//

import SwiftUI

struct View035: View {
  @State private var showModal = false
  var body: some View {
    NavigationStack {
      Button("モーダルを開く", action: { showModal.toggle() })
    }.sheet(isPresented: $showModal) {
      ModalView()
    }
  }
}

private struct ModalView: View {
  @Environment(\.dismiss) var dismiss
  var body: some View {
    VStack {
      Text("スワイプでは閉じられないモーダル")
      Spacer()
      Button(
        "閉じる",
        action: {
          dismiss()
        })
    }
    .interactiveDismissDisabled()
  }
}

#Preview {
  View035()
}
