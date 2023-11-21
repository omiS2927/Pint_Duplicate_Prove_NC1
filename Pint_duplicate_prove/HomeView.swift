//
//  HomeView.swift
//  Pint_duplicate_prove
//
//  Created by Simona De Luca on 15/11/23.
//

import SwiftUI

enum HomeViewPages {
    case detailView
    // Inserire altri casi se serve una nuova pagina
}

struct HomeView: View {
    
    @State private var navigationPath = NavigationPath()
    @State private var searchText = ""
    
    @State var imageNameSelected = ""
    @State var imageTitleSelected = ""
    
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(CustomColor.title)]
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(CustomColor.title)]
    }
    
    var body: some View {
        
        NavigationStack(path: $navigationPath){
            
            //View principale ⬇️
            ZStack{
                
                ScrollView{
                    VStack {
                        //Contenuto della view principale
                        VStack{
                            SectionTitle(title: "Browse by category")
                            HStack{
                                CategoryButton(
                                    imageName: "nature",
                                    categoryName: "Nature"
                                )
                                
                                CategoryButton(
                                    imageName: "black_white",
                                    categoryName: "Black and White"
                                )
                                CategoryButton(
                                    imageName: "space",
                                    categoryName: "Space"
                                )
                            }
                            HStack{
                                CategoryButton(
                                    imageName: "animals",
                                    categoryName: "Animals"
                                )
                                CategoryButton(
                                    imageName: "flowers",
                                    categoryName: "Flowers"
                                )
                                CategoryButton(
                                    imageName: "travel",
                                    categoryName: "Travels"
                                )
                            }
                        }
                        
                        SectionTitle(title: "Discover")
                        HStack{
                            
                            VStack{
                                
                                Button(
                                    action: {
                                        imageNameSelected = "frog"
                                        imageTitleSelected = "Javan flying frog"
                                        
                                        navigationPath.append(HomeViewPages.detailView)
                                    },
                                    label: {
                                        Image("frog")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 168, height: 235)
                                            .cornerRadius(40)
                                    }
                                )
                                
                                Button(
                                    action: {
                                        imageNameSelected = "libro"
                                        imageTitleSelected = "Tea and Book"
                                        
                                        navigationPath.append(HomeViewPages.detailView)
                                    },
                                    label: {
                                        Image("libro")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 168, height: 160)
                                            .cornerRadius(40)
                                    }
                                )
                                
                            }
                            
                            //Griglia
                            VStack{
                                Button(
                                    action: {
                                        imageNameSelected = "fiore"
                                        imageTitleSelected = "Dogwood flower"
                                        
                                        navigationPath.append(HomeViewPages.detailView)
                                    },
                                    label: {
                                        Image("fiore")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 168, height: 160)
                                            .cornerRadius(40)
                                    }
                                )
                                
                                Button(
                                    action: {
                                        imageNameSelected = "barca"
                                        imageTitleSelected = "Braies lake"
                                        
                                        navigationPath.append(HomeViewPages.detailView)
                                    },
                                    label: {
                                        Image("barca")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 168, height: 235)
                                            .cornerRadius(40)
                                    }
                                )
                                
                            }
                            
                        }
                        
                    }
                }
                //Impostazioni della NavigationBar ⬇️
                .background(CustomColor.background)
                .navigationTitle("Browse")
                .navigationBarTitleDisplayMode(.automatic)
                .searchable(text: $searchText, prompt: "Search")
                //Altre Pagine ⬇️
                .navigationDestination(for: HomeViewPages.self) { page in
                    switch page {
                    case .detailView:
                        ImageDetailView(
                            imageName: $imageNameSelected,
                            imageTitle: $imageTitleSelected
                        )
                    }
                }
                
            }
            
        }
        
    }
}


#Preview {
    HomeView()
}

