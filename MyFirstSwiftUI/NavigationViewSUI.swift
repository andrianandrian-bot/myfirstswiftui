//
//  NavigationViewSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI
import Introspect

struct NavigationViewSUI: View {
    
    @State private var users = ["Ian", "Maria", "Igor", "Andrew"]
    
    var body: some View {
        NavigationView {
            List {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Text("3223442343423423423")
                        Text("32234423432424")
                        Text("32234")
                        Text("32234")
                        Text("32234")
                    }
                }
                ForEach(users, id: \.self) { user in
                    VStack {
                        Text(user)
                        Image("la").resizable().aspectRatio(contentMode: .fit)
                    }
                }
                .onDelete(perform: delete(at:))
                .onMove(perform: move(from:to:))
            }
            .navigationBarTitle("Welcome", displayMode: .inline)
            .navigationBarItems(trailing: EditButton())
            .introspectTableView { tableView in
                tableView.separatorStyle = .none
            }.listStyle(.grouped)
        }
    }
    
    private func delete(at offset: IndexSet) {
        users.remove(atOffsets: offset)
    }
    
    private func move(from source: IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
    }
}

struct NavigationViewSUI_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewSUI()
    }
}
