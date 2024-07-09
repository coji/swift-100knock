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
                    "001 画像をリサイズして表示（fit）",
                    destination: {
                        View001()
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
