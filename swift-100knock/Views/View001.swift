//
//  001.swift
//  swift-100knock
//
//  Created by coji on 2024/07/09.
//

import SwiftUI

struct View001: View {
    var body: some View {
        VStack {
            Image("Monalisa")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 200)
                .background(Color.red)


            Text("Mona Lisa")
        }
    }
}

#Preview {
    View001()
}
