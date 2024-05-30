//
//  DestinationViewModel.swift
//  Travel
//
//  Created by valeri mekhashishvili on 30.05.24.
//

import Foundation

class DestinationViewModel: ObservableObject {
    @Published var destination: Destination
    
    init(destination: Destination) {
        self.destination = destination
    }
}
