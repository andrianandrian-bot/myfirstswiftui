//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 16.04.2022.
//

import SwiftUI

let text = "As of Xcode 11 beta 2, you can scale an image to arbitrary dimensions, while maintaining the original aspect ratio by wrapping the image in another element."

struct GradientSUI: View {
    var body: some View {
        
        let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
        let gradient = AngularGradient(gradient: colors, center: .center)
        
        return Circle()
            .strokeBorder(gradient, lineWidth: 3)
            .padding(.horizontal, 30)
//        VStack {
//            Text("Hello, World")
//                .font(.largeTitle)
//                .foregroundColor(.white)
//                .frame(width: 200, alignment: .center)
//                .padding(50)
//                .background(Image("la").resizable())
//                .clipShape(Capsule())
//            Button(action: {}) {
//                VStack {
//                    Text("Hello, world!")
//                        .font(.largeTitle)
//                        .foregroundColor(.white)
//                    Image(systemName: "cloud.sun.fill")
//                        .font(.largeTitle)
//                        .foregroundColor(.red)
//                }
//            }
//            .padding(50)
//            .background(Image("la").resizable())
//            .clipShape(Capsule())
//        }
    }
}


extension Color {
    
    static var customColot: Color {
        Color(.sRGB, red: 24/255, green: 24/255, blue: 25/255, opacity: 1.0)
    }
    
}





























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GradientSUI()
    }
}
