//
//  ContentView.swift
//  Travel
//
//  Created by valeri mekhashishvili on 30.05.24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataStore = DataStore()
    
    var body: some View {
        MainScreenView(dataStore: dataStore)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
