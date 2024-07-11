//
//  ContentView.swift
//  swift-100knock
//
//  Created by coji on 2024/07/09.
//

import SwiftUI

struct ContentView: View {
  @State var path = NavigationPath()

  var body: some View {
    VStack {
      NavigationStack(path: $path) {
        Button(
          "これはなに？",
          action: {
            path.append(1)
          }
        )
        .navigationTitle("SwiftUI 100本ノック")
        .navigationDestination(
          for: Int.self,
          destination: { _ in
            Text(
              "[SwiftUI 100本ノック](https://qiita.com/takoikatakotako/items/7e5fbdf6ab7749b6865d?utm_content=buffer6b8c2&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer) をやってみた結果です。"
            )
          })
        List {
          NavigationLink(
            "001 画像をリサイズして表示(fit)",
            destination: {
              View001()
            }
          )
          NavigationLink(
            "002 画像をリサイズして表示(fill)",
            destination: {
              View002()
            }
          )
          NavigationLink(
            "003 画像を丸く切り取り、枠をつける",
            destination: {
              View003()
            }
          )
          NavigationLink(
            "004 画像を等間隔で横に並べる",
            destination: {
              View004()
            }
          )
          NavigationLink(
            "005 NavigationView でタイトル",
            destination: {
              View005()
            }
          )
          NavigationLink(
            "006 Pickerで選択",
            destination: {
              View006()
            }
          )
        }
      }
    }
  }
}

#Preview {
  ContentView()
}
