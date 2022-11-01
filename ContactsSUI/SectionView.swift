//
//  RowView.swift
//  ContactsSUI
//
//  Created by Антон Заричный on 01.11.2022.
//

import SwiftUI

struct SectionView: View {
    let imageName: String
    let contacntInfo: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(contacntInfo)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(imageName: "phone", contacntInfo: "123")
    }
}
