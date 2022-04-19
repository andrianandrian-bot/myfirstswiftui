//
//  SheetLinkSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 18.04.2022.
//

import SwiftUI

struct DetailViewForSheet: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Detail view")
            Button {
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Back button")
            }

        }
    }
}

struct SheetLinkSUI: View {
    
    @State private var showingDetail = false
    
    var body: some View {
        Button {
            self.showingDetail.toggle()
        } label: {
            Text("Navigate to detail view")
        }.sheet(isPresented: $showingDetail) {
            DetailViewForSheet()
        }

    }
}

struct SheetLinkSUI_Previews: PreviewProvider {
    static var previews: some View {
        SheetLinkSUI()
    }
}
