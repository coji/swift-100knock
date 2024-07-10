//
//  ContentView.swift
//  swift-100knock
//
//  Created by coji on 2024/07/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
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
            }
            .navigationTitle("SwiftUI 100本ノック")
        }
    }
}

#Preview {
    ContentView()
}
