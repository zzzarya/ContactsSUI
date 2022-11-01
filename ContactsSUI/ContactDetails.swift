//
//  ContactDetails.swift
//  ContactsSUI
//
//  Created by Антон Заричный on 01.11.2022.
//

import SwiftUI

struct ContactDetails: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
            SectionView(imageName: "phone", contacntInfo: contact.number)
            SectionView(imageName: "tray", contacntInfo: contact.email)
        }
        .navigationTitle(contact.fullname)
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(contact: Person.getPersonList().first!)
    }
}
