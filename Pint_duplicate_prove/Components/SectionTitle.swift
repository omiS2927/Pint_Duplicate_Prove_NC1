//
//  SectionTitle.swift
//  Pint_duplicate_prove
//
//  Created by Simona De Luca on 15/11/23.
//

import SwiftUI

struct SectionTitle: View {
    
    var title: String = "Set a title"
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundStyle(CustomColor.title)
                .bold()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SectionTitle(title: "title")
}
