//
//  ImageDetailView.swift
//  Pint_duplicate_prove
//
//  Created by Simona De Luca on 19/11/23.
//

import SwiftUI

struct ImageDetailView: View {
    
    @Binding var imageName: String
    @Binding var imageTitle: String
    
    init(imageName: Binding<String>, imageTitle: Binding<String>){
        
        self._imageName = imageName
        self._imageTitle = imageTitle
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(CustomColor.title)]
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(CustomColor.title)]
    }
    
    var body: some View {
        ScrollView{
            VStack{
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(40)
                HStack{
                        Image("User")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 30, height: 30)
                            .cornerRadius(10)
                        Text("Username")
                            .foregroundColor(.username)
                            .fontWeight(.bold)
                        Spacer()
                        Text("Follow")
                            .foregroundColor(.follow)
                }
                .padding()
                SectionTitle(title: "More to explore")
                HStack{
                    
                    VStack{
                        Image("monkey")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 168, height: 260)
                            .cornerRadius(40)
                        
                        Image("giglio")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 168, height: 200)
                            .cornerRadius(40)
                        
                    
                    }
                    VStack{
                        Image("book_dog")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 168, height: 260)
                            .cornerRadius(40)
                        
                        Image("Viaje")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 168, height: 140)
                            .cornerRadius(40)
                        Spacer()
                        
                    }
                }
                
            }
        }
        .navigationTitle(imageTitle)
        //I pulsanti azione che si trovano sulla destra ⬇️
        .toolbar{
            Button(
                action: {
                    print("pressed")
                },
                label: {
                    Image(systemName: "plus")
                }
            )
        }
        
    }
}

#Preview {
    NavigationStack(){
        ImageDetailView(
            imageName: .constant("frog"),
            imageTitle: .constant("Javan flying frog")
        )
    }
}
