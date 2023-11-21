//
//  RootView.swift
//  Pint_duplicate_prove
//
//  Created by Simona De Luca on 15/11/23.
//

import SwiftUI

struct RootView: View {
    init() {
        
        UITabBar.appearance().barTintColor = UIColor(CustomColor.tab_bar)
        
        UITabBar.appearance().unselectedItemTintColor = UIColor(CustomColor.tab_unselected).withAlphaComponent(0.5)
    }
    
    var body: some View {
        
        TabView() {
            
            HomeView().tabItem {
                Label("Browse", systemImage: "house.fill")
            }.tag(1)
            
            ProfileView().tabItem {
                Label("Profile", systemImage: "person.fill")
            }.tag(2)
            
            SettingsView().tabItem {
                Label("Settings", systemImage: "gearshape.fill")
            }.tag(3)
        }
    }
}

#Preview {
    RootView()
}
