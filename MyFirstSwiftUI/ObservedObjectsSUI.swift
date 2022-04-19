//
//  ObservedObjectsSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 18.04.2022.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Ivan"
    @Published var secondName = "Ivanov"
}

struct ObservedObjectsSUI: View {
    
    @ObservedObject var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName)")
            Text("Your second name is \(user.secondName)")
        }
    }
}

// @EnviromentObject - можно поделиться данными со всеми view

struct ObservedObjectsSUI_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectsSUI()
    }
}
