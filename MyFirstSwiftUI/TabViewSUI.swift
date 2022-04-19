//
//  TabViewSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI

struct CustomGroup: View {
    
    var body: some View {
        Group {
            Text("hack HStack limit 10 view-elements")
            Text("hack HStack limit 10 view-elements")
            Text("hack HStack limit 10 view-elements")
            Text("hack HStack limit 10 view-elements")
            Text("hack HStack limit 10 view-elements")
            Text("hack HStack limit 10 view-elements")
            Text("hack HStack limit 10 view-elements")
            Text("hack HStack limit 10 view-elements")
            Text("hack HStack limit 10 view-elements")
            Text("hack HStack limit 10 view-elements")
        }
    }
}

struct TabViewSUI: View {
    
    @State private var selectedView = 1
    
    var body: some View {
        TabView(selection: $selectedView) {
            
            DetailView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }
            
            Text("First view")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }.tag(0)
            
            Text("Second view11")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Second")
                }.tag(1)
            
            VStack {
                CustomGroup()
                CustomGroup()
                CustomGroup()
            }
            .tabItem {
                Image(systemName: "3.circle")
                Text("Third")
            }.tag(2)
            
        }
    }
}

struct TabViewSUI_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSUI()
    }
}
