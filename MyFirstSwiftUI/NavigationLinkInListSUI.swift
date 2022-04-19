//
//  NavigationLinkInListSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 18.04.2022.
//

import SwiftUI

struct Dog: Identifiable {
    var id = UUID()
    var name: String
}

struct DogRow: View {
    
    var dog: Dog
    
    var body: some View {
        Text(dog.name)
    }
}

struct DogView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("My dog`s name")
            Image("la")
            Button {
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("back button")
            }

        }
    }
}

struct NavigationLinkInListSUI: View {
    
    var body: some View {
        let dogs: [Dog] = [
            .init(name: "Racheal"),
            .init(name: "Sonya"),
            .init(name: "Nora"),
            .init(name: "Ryabchik")
        ]
        
        return NavigationView {
            List(dogs) { dog in
                NavigationLink {
                    DogView()
                } label: {
                    DogRow(dog: dog)
                }
            }.navigationBarTitle("Choose a dog", displayMode: .large)
        }
    }
}

struct NavigationLinkInListSUI_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkInListSUI()
    }
}
