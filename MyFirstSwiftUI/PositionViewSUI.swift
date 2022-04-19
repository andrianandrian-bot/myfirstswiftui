//
//  PositionViewSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 18.04.2022.
//

import SwiftUI

struct PositionViewSUI: View {
    
    @State private var rotation = 0.0

    var body: some View {
        VStack {
            Slider(value: $rotation, in: 0...360, step: 1.0)
            Text("Hello, Swift!")
                .rotationEffect(.degrees(rotation))
//                .offset(y: 50)
                .padding()
                .font(.largeTitle)
            
            Image("la").resizable().aspectRatio(contentMode: .fit)
                .padding()
//                .offset(y: 60)
                .rotation3DEffect(.degrees(rotation), axis: (x: 0, y: 1, z: 1))
//                .rotationEffect(.degrees(-rotation))
            
            Text("New hello")
                .rotationEffect(.degrees(rotation), anchor: .topLeading)
            
            Text("New label")
                .rotation3DEffect(.degrees(-rotation), axis: (x: 1, y: 0, z: 0))
        }
    }
}

struct PositionViewSUI_Previews: PreviewProvider {
    static var previews: some View {
        PositionViewSUI()
    }
}
