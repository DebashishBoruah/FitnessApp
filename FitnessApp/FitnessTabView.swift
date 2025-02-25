//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Debashish Boruah on 24/02/25.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
    init()
    {
        let appearnace = UITabBarAppearance()
        appearnace.configureWithOpaqueBackground()
        appearnace.stackedLayoutAppearance.selected.iconColor = .red
        appearnace.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.black]
        UITabBar.appearance().scrollEdgeAppearance = appearnace
    }
    
    var body: some View {
        TabView(selection:$selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem{
                    Image(systemName:"house")
                    
                    Text("Home")
                }
            
            HistoricView()
                .tag("Historic")
                .tabItem{
                    Image(systemName:"chart.line.uptrend.xyaxis")
                    
                    Text("History")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
