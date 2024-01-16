//
//  ContentView.swift
//  AppleWatchStore
//
//  Created by Israel Ogbonna on 1/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            ProductsView()
                .tabItem {
                    Label("Products", systemImage: "applewatch")
                }
                .tag(1)
            CartView()
                .tabItem {
                    Label("Bag", systemImage: "bag")
                }
                .badge(99)
                .tag(2)
            FavouriteView()
                .tabItem {
                    Label("Favourite", systemImage: "heart")
                }
                .tag(3)
        }
        .customNavigationBar()
    }
}

#Preview {
    ContentView()
}
