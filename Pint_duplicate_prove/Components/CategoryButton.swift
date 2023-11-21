//
//  CategoryButton.swift
//  Pint_duplicate_prove
//
//  Created by Simona De Luca on 17/11/23.
//

import SwiftUI

struct CategoryButton: View {
    
    var imageName: String = "default-image"
    var categoryName: String = "insert-text"
    
    var body: some View {
        
        Button(
            action: {
                print("category button pressed")
            },
            label: {
                
                ZStack{
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 111.88, height: 100)
                        .cornerRadius(40)
                    
                    Text(categoryName)
                        .padding()
                        .frame(width: 111.88, height: 100)
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(CustomColor.text)
                        
                    // .foregroundStyle(.red)
                }
                
                
            }
        )
        
    }
}

#Preview {
    CategoryButton(imageName: "nature", categoryName: "Nature")
}
