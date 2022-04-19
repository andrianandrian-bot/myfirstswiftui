//
//  ModifiersSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI

struct CustomView: View {
    var name: String
    
    var body: some View {
        Text(name)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.red)
            .background(Color.green)
    }
}

struct customModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .foregroundColor(.red)
            .background(Color.green)
    }
}

extension View {
    func customM() -> some View {
        self.modifier(customModifier())
    }
}

struct ModifiersSUI: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("First")
                .customM()
            
            Text("Custom modifier")
                .customM()
        }
    }
}

struct ModifiersSUI_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersSUI()
    }
}
