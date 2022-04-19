//
//  Slider.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI

struct SliderSUI: View {
    
    @State private var celcius: Double = 0
    
    var body: some View {
        VStack {
            Slider(value: $celcius, in: -100...100, step: 0.1, label: {
                Text("dfdf").foregroundColor(.red)
            }, minimumValueLabel: {
                Text("-100").foregroundColor(.red)
            }, maximumValueLabel: {
                Text("100").foregroundColor(.red)
            })
                .background(Color.green)
            Text("\(celcius) by Celcius")
            Text("\(celcius * 9/5 + 32) by Fahrenheit")
        }
    }
}

struct SliderSUI_Previews: PreviewProvider {
    static var previews: some View {
        SliderSUI()
    }
}
