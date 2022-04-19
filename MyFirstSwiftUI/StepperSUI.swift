//
//  StepperSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI

struct StepperSUI: View {
    
    @State private var age = 18
    
    var body: some View {
        VStack {
            Stepper("Enter your age", value: $age, in: 0...130)
            Text("Your age is \(age)")
        }
    }
}

struct StepperSUI_Previews: PreviewProvider {
    static var previews: some View {
        StepperSUI()
    }
}
