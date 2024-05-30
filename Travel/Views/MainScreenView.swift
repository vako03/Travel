//
//  MainScreenView.swift
//  Travel
//
//  Created by valeri mekhashishvili on 30.05.24.
//

import SwiftUI

struct MainScreenView: View {
    @ObservedObject var dataStore = DataStore()
    @State private var showingTravelTips = false
    @State private var randomTravelTip = ""
    
    var body: some View {
        NavigationView {
            List(dataStore.destinations) { destination in
                NavigationLink(destination: DestinationDetailScreen(destination: destination)) {
                    DestinationListItemView(destination: destination)
                }
            }
            .navigationTitle("Travel Destinations")
            .toolbar {
                Button(action: {
                    randomTravelTip = dataStore.getRandomTravelTip()
                    showingTravelTips = true
                }) {
                    Image(systemName: "lightbulb")
                        .renderingMode(.template)
                        .foregroundColor(.blue)
                }
            }
            .alert(isPresented: $showingTravelTips) {
                Alert(title: Text("Travel Tip"), message: Text(randomTravelTip), dismissButton: .default(Text("Got it!")))
            }
        }
    }
}
