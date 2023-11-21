//
//  ContentView.swift
//  Pint_duplicate_prove
//
//  Created by Simona De Luca on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //screen
        ZStack{
            ScrollView{
                
                //1st section ccategories
                Section{
                    
                    //title
                    
                    //for each for my groups
                }
            }
        }
        
        
       /*
        HStack{
            Text("Ciao")
            Text("Addio")
        }
        ScrollView{
            HStack{
                VStack{
                    Image("")
                    Text ("m")
                }
                VStack{
                    Image("")
                    Text("g")
                }
            }
        }
        */
        //navigation
        VStack {
            TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                Text("").tabItem { Label("", systemImage: "house.fill")
                    .tag(1) }
              //  Text("").tabItem { Label("", systemImage: "magnifyingglass");Text("Tab Label 2") }.tag(2)
                Text("").tabItem { Label("", systemImage: "plus");Text("Tab Label 2") }.tag(2)
              //  Text("").tabItem {Label("", systemImage: "ellipsis.message.fill"); Text("Tab Label 2") }.tag(2)
                Text("....").tabItem {Label("", systemImage: "person.fill"); Text("Tab Label 2") }.tag(2)
                
            }
        }
       
    }
}

#Preview {
    ContentView()
}
