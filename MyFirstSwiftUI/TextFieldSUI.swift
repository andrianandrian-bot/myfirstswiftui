//
//  TextFieldSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI

struct TextFieldSUI: View {
    
    @State private var name = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .frame(height: 100, alignment: .top)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Hello, \(name)")
            
            SecureField("Enter your pasword", text: $password)
            Text("You entered: \(password)")
        }
    }
}

struct TextFieldSUI_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldSUI()
    }
}
