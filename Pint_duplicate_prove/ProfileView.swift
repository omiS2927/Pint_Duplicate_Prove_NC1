//
//  ProfileView.swift
//  Pint_duplicate_prove
//
//  Created by Simona De Luca on 15/11/23.
//

import SwiftUI

struct ProfileView: View {
    
    var description: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
    
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(CustomColor.title)]
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(CustomColor.title)]
    }
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ZStack{
                    VStack{
                        HStack{
                            VStack(alignment: .center){
                                Image("User")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(20)
                                
                                Text("Username")
                                    .fontWeight(.bold)
                                    .foregroundStyle(CustomColor.title)
                            }
                            
                            Spacer()
                            
                            VStack{
                                Text("Follow")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(CustomColor.title)
                                Text("000")
                                    .foregroundStyle(CustomColor.title)
                            }
                            
                            Spacer()
                            
                            VStack{
                                Text("Like")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(CustomColor.title)
                                Text("000")
                                    .foregroundStyle(CustomColor.title)
                            }
                            
                            Spacer()
                        }
                        .padding(.bottom)
                        
                        Text(description)
                            .foregroundStyle(CustomColor.title)
                    
                    }.padding(10)
                }
                    .pickerStyle(.segmented)
                    
                SegmentedControlView()
                    .padding()
                    
                
                HStack{
                    VStack{
                        Image("tiger")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 168, height: 260)
                            .cornerRadius(40)
                        Image("fiore")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 168, height: 180)
                            .cornerRadius(40)
                    }
                    VStack{
                        Image("deer")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 168, height: 180)
                            .cornerRadius(40)
                        Image("libro")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 168, height: 260)
                            .cornerRadius(40)
                    }
                }
            }
            .background(CustomColor.background)
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
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
    
}


#Preview {
    ProfileView()
}
