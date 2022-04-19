//
//  PickerSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI

struct PickerSUI: View {
    
    private var colors = ["black", "white", "red", "green", "blue"]
    
    @State private var selectedColorIndex: Int = 0
    
    var body: some View {
        VStack {
            Picker(selection: $selectedColorIndex, label: Text("Choose color")) {
                ForEach(0..<colors.count) { index in
                    HStack {
                        Image("la").resizable()
                        Text(self.colors[index])
                        Text(self.colors[index])
                    }
                }
            }.pickerStyle(.wheel)
            
            Text("Your selected color is: \(colors[selectedColorIndex])")
                .padding(.top, 100)

        }
    }
    
}

struct PickerSUI_Previews: PreviewProvider {
    static var previews: some View {
        PickerSUI()
    }
}
