//
//  View023.swift
//  swift-100knock
//
//  Created by coji on 2024/07/13.
//

import SwiftUI

struct View023: View {
  @State private var fruits = ["Apple", "Banana", "Orange", "Peach", "Strawberry"]
  var body: some View {
    NavigationStack {
      List {
        ForEach(fruits, id: \.self) { fruit in
          Text(fruit)
        }
        .onDelete(perform: delete)
      }
      .navigationBarItems(trailing: EditButton())
    }
  }

  private func delete(at offsets: IndexSet) {
    fruits.remove(atOffsets: offsets)
  }
}

#Preview {
  View023()
}
