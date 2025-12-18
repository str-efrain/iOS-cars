//
//  HomeView.swift
//  ios-cars
//
//  Created by Efrain Mouton on 18/12/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(DataManager.self) var dataManager
    var sorting = ["Benzine", "Elektrisch", "Diesel"]
    @State var selectedSorting = "Benzine"
    @State var loading = true
    @State var selectedCar: Car?
    
    var body: some View {
        Picker("Type:", selection: $selectedSorting) {
            ForEach(sorting, id: \.self) { sorting in
                Text(sorting)
            }
        }.pickerStyle(.segmented)
        VStack {
            if loading {
                ProgressView("loading...")
            } else {
                List(dataManager.getCarsBySorting(sorting: selectedSorting), id: \.self, selection: $selectedCar) { car in
                    VStack {
                        Image(systemName: "car")
                        Text(car.brand + " " +  car.model)
                        Text(car.color)
                        Text(car.fuelType)
                        Text("\(car.year)")
                        Text("\(car.price)")
                    }
                }
            }
        }.task {
            await dataManager.loadCars()
            loading = false
        }
        
    }
}
