//
//  TipCalculator.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI
import Introspect

struct TipCalculator: View {
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPersentage = 1
    
    private let tipPersentages = [0, 5, 10, 15, 20]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPersentages[tipPersentage])
        let orderAmount = Double(checkAmount) ?? 0
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        return amountPerPerson
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount).keyboardType(.numberPad)
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) { number in
                            Text("\(number) people")
                        }
                    }
                }
                
                Section(header: Text("How many you want to pay?")) {
                    Picker("Tip persentage", selection: $tipPersentage) {
                        ForEach(0..<tipPersentages.count) { number in
                            let percent = self.tipPersentages[number]
                            Text("\(percent) %")
                        }
                    }.pickerStyle(.segmented)
                }
                
                Section {
                    Text("$ \(totalPerPerson, specifier: "%.2f")")
                        .font(.largeTitle)
                }
            }
            .navigationBarTitle("Tip calculator", displayMode: .large)
        }
    }
}

struct TipCalculator_Previews: PreviewProvider {
    static var previews: some View {
        TipCalculator()
    }
}
