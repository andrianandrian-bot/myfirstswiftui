//
//  AlertSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI

struct AlertSUI: View {
    
    @State private var showingAlert = false
    @State private var showingAlert2 = false
    @State private var isAlert3Visible = false
    @State private var showingSheet = false
    
    var body: some View {
        VStack {
            Button("Show alert") {
                self.showingAlert = true
            }.alert(isPresented: $showingAlert) {
                Alert(title: Text("Hello text"), message: Text("SwiftUI"), dismissButton: .default(Text("OK")))
            }
            
            Button("Show alert 2") {
                self.showingAlert2 = true
            }.alert(isPresented: $showingAlert2) {
                Alert(title: Text("Hello text 2"), message: Text("SwiftUI 2"), dismissButton: .default(Text("OK")))
            }
            
            Button("Show alert 3") {
                self.isAlert3Visible = true
            }.alert(isPresented: $isAlert3Visible) {
                Alert(title: Text("Hello alert 3"), message: Text("Hello description 3"), primaryButton: .destructive(Text("Delete"), action: {
                    print("Deleting...")
                }), secondaryButton: .cancel(Text("Cancel")))
            }
            
            Button("Show action sheet") {
                self.showingSheet = true
            }.actionSheet(isPresented: $showingSheet) {
                ActionSheet(title: Text("What do you want to do?"), message: Text("There is only one choice..."), buttons: [.default(Text("Dismiss action sheet")), .cancel(Text("Cancel type")), .destructive(Text("Destructive type"))])
            }
        }
    }
}

struct AlertSUI_Previews: PreviewProvider {
    static var previews: some View {
        AlertSUI()
    }
}
