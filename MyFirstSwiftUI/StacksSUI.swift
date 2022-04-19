//
//  StacksSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 18.04.2022.
//

import SwiftUI

struct StacksSUI: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Hello!")
            
            Divider()

            
            HStack {
                Text("Hello, World!")
                    .padding(50)
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding(50)
            }
            
            HStack {
                Text("Hello, World!")
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct StacksSUI_Previews: PreviewProvider {
    static var previews: some View {
        StacksSUI()
    }
}
