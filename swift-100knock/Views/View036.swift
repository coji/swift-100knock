//
//  View036.swift
//  swift-100knock
//
//  Created by coji on 2024/07/18.
//

import SwiftUI

struct View036: View {
  @State private var showModal = false
  var body: some View {
    NavigationStack {
      Button("ハーフモーダルを開く", action: { showModal.toggle() })
    }.sheet(isPresented: $showModal) {
      ModalView()
        .presentationDetents([.medium])
    }
  }
}

private struct ModalView: View {
  var body: some View {
    VStack {
      Text("ハーフモーダル")

    }
  }

}

#Preview {
  View036()
}
