//
//  View003.swift
//  swift-100knock
//
//  Created by coji on 2024/07/12.
//

import SwiftUI

struct View003: View {
    var body: some View {
      Image("Monalisa")
        .resizable()
        .scaledToFill()
        .frame(width:150, height: 150)
        .clipShape(.circle)
    }
}

#Preview {
    View003()
}
