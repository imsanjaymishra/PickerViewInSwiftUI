//
//  ContentView.swift
//  PickerViewInSwiftUI
//
//  Created by Sanjay Mishra on 22/07/20.
//  Copyright © 2020 Sanjay Mishra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var productsArray = ["Pen", "Book", "Bat", "Ball"]
    @State var selectedProductIndex = 0
    var body: some View {
        VStack {
            HStack {
                Text("Selected Product:-    \(productsArray[selectedProductIndex])")
            }
            Picker(selection: $selectedProductIndex, label: Text("")) {
                ForEach(0..<productsArray.count) {
                    Text("\(self.productsArray[$0])")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
