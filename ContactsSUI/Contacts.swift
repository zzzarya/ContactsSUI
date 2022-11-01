//
//  Contacts.swift
//  ContactsSUI
//
//  Created by Антон Заричный on 01.11.2022.
//

import SwiftUI

struct Contacts: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(destination: ContactDetails(contact: contact)) {
                    Text(contact.fullname)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts(contacts: Person.getPersonList())
    }
}
