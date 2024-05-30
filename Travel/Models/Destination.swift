//
//  Destination.swift
//  Travel
//
//  Created by valeri mekhashishvili on 30.05.24.
//

import Foundation

struct Destination: Identifiable, Decodable {
    let id: Int
    let name: String
    let imageURL: String
    let description: String
    let transport: String
    let mustSee: String
    let hotels: String
}
