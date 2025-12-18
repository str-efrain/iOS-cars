//
//  ContentView.swift
//  ios-cars
//
//  Created by Efrain Mouton on 18/12/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Home", systemImage: "house") {
                HomeView()
            }
            Tab("Favourites", systemImage: "star") {
                FavouritesView()
            }
            Tab("Settings", systemImage: "gear") {
                SettingsView()
            }
        }
    }
}

#Preview {
    ContentView()
}
