//
//  ContentView.swift
//  ContactsSUI
//
//  Created by Антон Заричный on 01.11.2022.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getPersonList()
    
    var body: some View {
        TabView {
            Contacts(contacts: contacts)
                .tabItem {
                    Label("Contacts", systemImage: "person.3")
                }
            Numbers(contacts: contacts)
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
