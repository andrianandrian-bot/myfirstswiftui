//
//  ListSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI
import Introspect

struct Restoran: Identifiable {
    var id = UUID()
    var name: String
}

struct RestoranCell: View {
    var restoran: Restoran
    var body: some View {
        Text("Code in restoran \(restoran.name)")
    }
}

struct MusicRow: View {
    var name: String
    
    var body: some View {
        VStack {
            Text("Music: \(name)").padding(.top, 0)
            Image("la").resizable().aspectRatio(contentMode: .fit)
            Divider()
        }
    }
}

struct ListSUI: View {

    var body: some View {
        List {
            Section {
                RestoranCell(restoran: Restoran(name: "Maria"))
                RestoranCell(restoran: Restoran(name: "Sofa"))
                RestoranCell(restoran: Restoran(name: "Anya"))
                MusicRow(name: "Abuse-Rock")
            } header: {
                Text("sdfsdfds")
                Image("la").resizable().aspectRatio(contentMode: .fit)
            }

            Section {
                MusicRow(name: "Rap")
                MusicRow(name: "Phonk")
                MusicRow(name: "Abuse-Rock")
            }
            Section {
                RestoranCell(restoran: Restoran(name: "Maria"))
                RestoranCell(restoran: Restoran(name: "Sofa"))
                RestoranCell(restoran: Restoran(name: "Anya"))
                MusicRow(name: "Abuse-Rock")
            }
        }.introspectTableView { tableView in
            tableView.separatorStyle = .none
        }.listStyle(.grouped)
    }
}

struct ListSUI_Previews: PreviewProvider {
    static var previews: some View {
        ListSUI()
    }
}
