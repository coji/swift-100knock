//
//  View012.swift
//  swift-100knock
//
//  Created by coji on 2024/07/12.
//

import SwiftUI

struct View012: View {
  @Environment(\.presentationMode) var presentaion

  var body: some View {
    NavigationStack {
      List {
        ForEach(0..<10) { index in
          NavigationLink(
            destination: {
              Text("Detail \(index)")
                .navigationBarBackButtonHidden()
            }
          ) {
            Text("Row \(index)")
          }
        }
      }
      .navigationTitle("List")
    }
  }
}

// This is a workaround to hide the back button in SwiftUI.
extension UINavigationController: UIGestureRecognizerDelegate {
  override open func viewDidLoad() {
    super.viewDidLoad()
    interactivePopGestureRecognizer?.delegate = self
  }

  public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
    return viewControllers.count > 1
  }
}

#Preview {
  View012()
}
