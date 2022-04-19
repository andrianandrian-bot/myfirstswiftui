//
//  ZStackSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 18.04.2022.
//

import SwiftUI

struct ZStackSUI: View {
    var body: some View {
        ZStack {
            Image("la")
            Text("Hello, Los Angeles")
                .font(.largeTitle)
                .background(Color.blue)
                .foregroundColor(.white)
        }
    }
}

struct ZStackSUI_Previews: PreviewProvider {
    static var previews: some View {
        ZStackSUI()
    }
}
