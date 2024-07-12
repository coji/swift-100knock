import SwiftUI

struct View007: View {
  var fruits = ["Apple", "Banana", "Orange", "Pineapple", "Strawberry"]
  @State private var selectedFruit = "Apple"

  var body: some View {
    VStack {
      Text("Select one!")
      Picker("Fruits", selection: $selectedFruit) {
        ForEach(fruits, id: \.self) { fruit in
          Text(fruit)
        }
      }
      .pickerStyle(.wheel)
      .onReceive([selectedFruit].publisher.first()) { (value) in
        print("Selected: \(value)")
      }
    }
  }
}

#Preview {
  View007()
}
