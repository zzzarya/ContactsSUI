//
//  Numbers.swift
//  ContactsSUI
//
//  Created by Антон Заричный on 01.11.2022.
//

import SwiftUI

struct Numbers: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) {contact in
                Section {
                    SectionView(imageName: "phone", contacntInfo: contact.number)
                    SectionView(imageName: "tray", contacntInfo: contact.email)
                } header: {
                    Text(contact.fullname)
                        .font(.headline)
                        .textCase(.none)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Numbers")
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(contacts: Person.getPersonList())
    }
}
