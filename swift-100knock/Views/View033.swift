//
//  View033.swift
//  swift-100knock
//
//  Created by coji on 2024/07/18.
//

import SwiftUI

struct View033: View {
  let columns = Array(repeating: GridItem(.fixed(80)), count: 4)

  var body: some View {
    NavigationStack {
      ScrollView {
        LazyVGrid(columns: columns) {
          Text("こんにちははじめましてようこそここへあなたはだれ？よいよいおいよい")
            .frame(width: 80, height: 80, alignment: .center)

          ForEach(0..<100, id: \.self) { index in
            Text("\(index)")
              .font(.title)
              .frame(width: 80, height: 80)
              .background(Color.blue)
              .cornerRadius(10)
          }
        }
      }
      .navigationTitle("UICollectionViewのようにViewを並べる")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

#Preview {
  View033()
}
