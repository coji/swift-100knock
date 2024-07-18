//
//  ContentView.swift
//  swift-100knock
//
//  Created by coji on 2024/07/09.
//

import SwiftUI

struct NavigationItem<Destination> {
  let title: String
  let destination: Destination
}

struct ContentView: View {
  @State var path = NavigationPath()
  let navigationItems: [NavigationItem<AnyView>] = [
    NavigationItem(title: "001 画像をリサイズして表示(fit)", destination: AnyView(View001())),
    NavigationItem(title: "002 画像をリサイズして表示(fill)", destination: AnyView(View002())),
    NavigationItem(title: "003 画像を丸く切り取り", destination: AnyView(View003())),
    NavigationItem(title: "004 画像を丸く切り取り枠をつける", destination: AnyView(View004())),
    NavigationItem(title: "005 画像を等間隔で横に並べる", destination: AnyView(View005())),
    NavigationItem(title: "006 NavigationView でタイトル", destination: AnyView(View006())),
    NavigationItem(title: "007 Pickerで選択", destination: AnyView(View007())),
    NavigationItem(title: "008 TabViewを使って画面を切り替える", destination: AnyView(View008())),
    NavigationItem(title: "009 Buttonタップで文字を変える", destination: AnyView(View009())),
    NavigationItem(title: "010 Listをセクションごとに表示する", destination: AnyView(View010())),
    NavigationItem(title: "011 ビューに値を渡す", destination: AnyView(View011())),
    NavigationItem(title: "012 NavigationView の戻るボタンを非表示にする", destination: AnyView(View012())),
    NavigationItem(title: "013 Listスタイルを plain にする", destination: AnyView(View013())),
    NavigationItem(title: "014 Alertを表示する", destination: AnyView(View014())),
    NavigationItem(title: "015 Alertを出し分ける", destination: AnyView(View015())),
    NavigationItem(title: "016 ボタン内の画像やテキストの色を変えない", destination: AnyView(View016())),
    NavigationItem(title: "017 数値入力でシート、それ以外でアラートを表示", destination: AnyView(View017())),
    NavigationItem(title: "018 Buttonからプッシュ遷移をする", destination: AnyView(View018())),
    NavigationItem(title: "019 続きを読む...ボタンがあるViewを実装する", destination: AnyView(View019())),
    NavigationItem(title: "020 複数のテキストを連結して表示する", destination: AnyView(View020())),
    NavigationItem(title: "021 ViewBuilder でカードを表示する", destination: AnyView(View021())),
    NavigationItem(title: "022 ViewModifier でカードを表示する", destination: AnyView(View022())),
    NavigationItem(title: "023 リストを編集する", destination: AnyView(View023())),
    NavigationItem(title: "024 リストをクリックしたらアラートを出す", destination: AnyView(View024())),
    NavigationItem(title: "025 遷移先から遷移元の関数を呼び出す", destination: AnyView(View025())),
    NavigationItem(title: "027 複数列の Picker を作成する", destination: AnyView(View027())),
    NavigationItem(title: "028 Sheetを表示する", destination: AnyView(View028())),
    NavigationItem(title: "029 全画面Sheetを表示する", destination: AnyView(View029())),
    NavigationItem(title: "030 NavigationBar を隠す", destination: AnyView(View030())),
    NavigationItem(title: "031 landscape でプレビューを表示する", destination: AnyView(View031())),
  ]

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

        List(navigationItems, id: \.title) { item in
          NavigationLink(
            item.title,
            destination: item.destination
          )
        }
      }
    }
  }
}

#Preview {
  ContentView()
}
