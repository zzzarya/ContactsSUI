//
//  Person.swift
//  ContactsSUI
//
//  Created by Антон Заричный on 01.11.2022.
//

import Foundation

struct Person: Identifiable {
    var id: Int
    let name: String
    let surname: String
    let number: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Person {
   static func getPersonList() -> [Person] {
       let personInfo = DataManager.shared
       
        let names = personInfo.names.shuffled()
        let surnames = personInfo.surnames.shuffled()
        let numbers = personInfo.numbers.shuffled()
        let emails = personInfo.emails.shuffled()
        
        var persons: [Person] = []
        
       for index in 0..<names.count {
           let person = Person(id: index,
                                name: names[index],
                                surname: surnames[index],
                                number: numbers[index],
                                email: emails[index])
            persons.append(person)
        }
        
        return persons
    }
}
