//
//  DataStore.swift
//  Travel
//
//  Created by valeri mekhashishvili on 30.05.24.
//

import Foundation
import SwiftUI

class DataStore: ObservableObject {
    @Published var destinations = [Destination]()
    
    let travelTips = [
        "Always carry a reusable water bottle to stay hydrated during your travels.",
        "Research local customs and etiquette before visiting a new destination.",
        "Keep copies of important documents like your passport and ID when traveling.",
        "Pack light to make your travels more convenient and enjoyable.",
        "Learn a few basic phrases in the local language to communicate with locals.",
        "Try local cuisine to experience the culture of your destination.",
        "Stay flexible with your travel plans to adapt to unexpected situations."
    ]
    
    func getRandomTravelTip() -> String {
        return travelTips.randomElement() ?? ""
    }
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = URL(string: "https://run.mocky.io/v3/85d2295c-2786-4d7f-9c1a-1cdd1ea90616") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                print("No data in response: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode([Destination].self, from: data)
                DispatchQueue.main.async {
                    self.destinations = decodedData
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }.resume()
    }
}
