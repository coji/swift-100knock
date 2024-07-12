//
//  View012.swift
//  swift-100knock
//
//  Created by coji on 2024/07/12.
//

import SwiftUI

struct View012: View {
  @Environment(\.presentationMode) var presentaion

  var body: some View {
    NavigationStack {
      List {
        ForEach(0..<10) { index in
          NavigationLink(
            destination: {
              Text("Detail \(index)")
                .navigationBarBackButtonHidden()
            }
          ) {
            Text("Row \(index)")
          }
        }
      }
      .navigationTitle("List")
    }
  }
}

#Preview {
  View012()
}
