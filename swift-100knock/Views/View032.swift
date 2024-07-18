//
//  View032.swift
//  swift-100knock
//
//  Created by coji on 2024/07/18.
//

import SwiftUI

extension NSNotification.Name {
  public static let deviceDidShakeNotification = NSNotification.Name("MyDeviceDidShakeNotification")
}

extension UIWindow {
  open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    super.motionEnded(motion, with: event)
    NotificationCenter.default.post(name: .deviceDidShakeNotification, object: event)
  }
}

struct View032: View {
  @State private var isShaked: Bool = false

  var body: some View {
    Text("シェイクして！")
      .font(.title)
      .onReceive(NotificationCenter.default.publisher(for: .deviceDidShakeNotification)) { _ in
        isShaked.toggle()
      }
      .foregroundColor(isShaked ? .red : .black)

  }
}

#Preview {
  View032()
}
