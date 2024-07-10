//
//  View004.swift
//  swift-100knock
//
//  Created by coji on 2024/07/10.
//

import SwiftUI

struct View004: View {
    var body: some View {
        HStack {
            Image("Monalisa")
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
                .frame(width: 80, height: 140)
                .clipped()
            Spacer()
            Image("Monalisa")
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
                .frame(width: 80, height: 140)
                .clipped()
            Spacer()
            Image("Monalisa")
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
                .frame(width: 80, height: 140)
                .clipped()
            Spacer()
            Image("Monalisa")
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
                .frame(width: 80, height: 140)
                .clipped()
        }
    }
}

#Preview {
    View004()
}
