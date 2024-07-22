//
//  ViewStunningEffect.swift
//  swift-100knock
//
//  Created by coji on 2024/07/22.
//

import SwiftUI

struct ViewStunningEffect: View {
  @State private var position: CGPoint = .zero

  var body: some View {
    GeometryReader() { proxy in
      let proxyWidth = proxy.size.width * 0.5
      let proxyHeight = proxy.size.height * 0.5

      Canvas { context, size in
        context.addFilter(.alphaThreshold(min: 0.8, color: .red))
        context.addFilter(.blur(radius: 22))

        context.drawLayer { ctx in
          ctx.fill(Circle().path(in: .init(x: proxyWidth - position.x - 50, y: proxyHeight - position.y - 200,
                                           width: 120, height:120)), with: .foreground)
          ctx.fill(Circle().path(in: .init(x: proxyWidth - 150, y: proxyHeight - 300, width: 300, height: 300)), with: .foreground)
        }
      }
    }
    .gesture(DragGesture().onChanged() { gesture in
      position = .init(x: gesture.translation.width, y: gesture.translation.height)
    })
  }
}

#Preview {
  ViewStunningEffect()
}
