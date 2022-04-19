//
//  FormSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI
import Introspect

struct FormSUI: View {
    
    @State private var colors = ["Red", "Green", "Blue"]
    @State private var selectedColor = 0
    @State private var additionalSettings = false
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedColor) {
                        ForEach(0..<colors.count) { text in
    //                        VStack {
    //                            Text(self.colors[text])
    //                            Image("la").resizable().aspectRatio(contentMode: .fit)
    //                        }
                            Text(self.colors[text])
                        }
                    } label: {
                        Text("Select a color11")
                    }.pickerStyle(SegmentedPickerStyle())
                } header: {
                    Text("Select color")
                }
                
                Toggle(isOn: $additionalSettings) {
                    Text("Additional settings")
                }
                
                Button {
                    print(4444)
                } label: {
                    Text("Save changes")
                }.disabled(!additionalSettings)
            }
            .navigationBarTitle("Settings", displayMode: .large)
            .introspectTableView { tableView in
                tableView.separatorStyle = .none
            }
        }
    }
}

struct FormSUI_Previews: PreviewProvider {
    static var previews: some View {
        FormSUI()
    }
}
