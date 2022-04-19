//
//  ExpenseAdd.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 18.04.2022.
//

import SwiftUI

struct ExpenseAdd: View {
    
    @ObservedObject var expenses: Expenses
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = ""
    @Environment(\.presentationMode) var presentationMode
    
    private let types = ["Bussines", "Personal"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Transaction name", text: $name)
                Picker("Type", selection: $type) {
                    ForEach(self.types,id: \.self) { text in
                        Text(text)
                    }
                }
                TextField("Amount", text: $amount)
                    .keyboardType(.numberPad)
            }
            .navigationBarTitle("Add transaction", displayMode: .large)
            .navigationBarItems(trailing: Button("Save") {
                guard let actualAmount = Int(self.amount) else { return }
                let item = ExpenseItem(name: self.name, type: self.type, amount: actualAmount)
                self.expenses.items.append(item)
                self.presentationMode.wrappedValue.dismiss()
            })
        } // navigation
    } // body
}

struct ExpenseAdd_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
