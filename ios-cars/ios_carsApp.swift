//
//  ios_carsApp.swift
//  ios-cars
//
//  Created by Efrain Mouton on 18/12/2025.
//

import SwiftUI

@main
struct ios_carsApp: App {
    @State var store = DataManager()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(store)
        }
    }
}
