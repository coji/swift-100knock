//
//  View027.swift
//  swift-100knock
//
//  Created by coji on 2024/07/15.
//

import SwiftUI

struct View027: View {
  @State var selectedHour = 8
  @State var selectedMinute = 30

  var body: some View {
    VStack(alignment: .leading) {
      Text("Select Hour and Minute").font(.title)
      HStack {
        Picker(selection: $selectedHour, label: EmptyView()) {
          ForEach(0 ..< 24) {
            Text("\($0)")
          }
          .labelsHidden()
        }
        .pickerStyle(.wheel)

        Picker(selection: $selectedMinute, label: EmptyView()) {
          ForEach(0 ..< 60) {
            Text("\($0)")
          }
        }
        .pickerStyle(.wheel)
      }
      .onReceive([selectedHour].publisher.first()) { value in
        print("hour \(value)")
      }
      .onReceive([selectedMinute].publisher.first()) { value in
        print("minute \(value)")
      }
    }
    .padding()
  }
}

#Preview {
  View027()
}
