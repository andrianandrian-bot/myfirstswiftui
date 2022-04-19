//
//  ExpenseApp.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 18.04.2022.
//

import SwiftUI

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Int
}

class Expenses: ObservableObject {
    @Published var items: [ExpenseItem] = [] {
        didSet {
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(items) {
                UserDefaults.standard.set(encoded, forKey: "items")
            }
        }
    }
    
    init() {
        guard
            let data = UserDefaults.standard.data(forKey: "items"),
            let decoded = try? JSONDecoder().decode([ExpenseItem].self, from: data)
        else { return }
        self.items = decoded
    }
}

struct ExpenseApp: View {
    
    @ObservedObject var expenses = Expenses()
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.expenses.items) { expense in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(expense.name)
                                .font(.headline)
                            Text(expense.type)
                        }
                        
                        Spacer()
                        
                        Text("$\(expense.amount)")
                            .font(.largeTitle)
                    }
                }
                .onDelete(perform: removeItems(as:))
            }
            .navigationBarTitle("My expenses", displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                self.showingAddExpense = true
            }, label: {
                Image(systemName: "plus")
            }))
            .sheet(isPresented: $showingAddExpense) {
                ExpenseAdd(expenses: expenses)
            }
            
        } // navigation view
    } // body
    
    private func removeItems(as offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ExpenseApp_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseApp()
    }
}
