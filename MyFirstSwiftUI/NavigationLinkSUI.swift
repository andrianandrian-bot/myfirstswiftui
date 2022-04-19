//
//  NavigationLinkSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 18.04.2022.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack {
            Image("la")
            Text("This is the detail view")
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(Color.gray)
        }
    }
}

struct NavigationLinkSUI: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    DetailView()
                } label: {
                    Text("Show me the detail view!!!")
                        .foregroundColor(.green)
                }.navigationBarTitle("Navigation", displayMode: .large)

            }
        }
    }
}

struct NavigationLinkSUI_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkSUI()
    }
}
