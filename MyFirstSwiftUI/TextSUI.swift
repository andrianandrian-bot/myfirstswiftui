//
//  TextSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 18.04.2022.
//

import SwiftUI

struct TextSUI: View {
    var body: some View {
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
            .kerning(5)
//            .tracking(5)
            .lineLimit(2)
            .truncationMode(.tail)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .background(Color.red)
            .lineSpacing(20)
            .padding()
            .background(Color.blue)
            .border(.black, width: 3)
    }
}

struct TextSUI_Previews: PreviewProvider {
    static var previews: some View {
        TextSUI()
    }
}
