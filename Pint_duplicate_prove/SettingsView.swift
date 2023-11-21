//
//  SettingsView.swift
//  Pint_duplicate_prove
//
//  Created by Simona De Luca on 15/11/23.
//

import SwiftUI

struct SettingsView: View {
    
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(CustomColor.title)]
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(CustomColor.title)]
    }
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Text("Hello")
                    Spacer()
                }
            }
            .background(CustomColor.background)
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.automatic)
        }
        
        
    }
    
}

#Preview {
    SettingsView()
}
