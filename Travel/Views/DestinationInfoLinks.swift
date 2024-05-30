//
//  DestinationInfoView.swift
//  Travel
//
//  Created by valeri mekhashishvili on 30.05.24.
//

import SwiftUI

struct DestinationInfoLinks: View {
    let destination: Destination
    
    var body: some View {
        VStack(spacing: 10) {
            NavigationLink(destination: InfoView(info: destination.transport, title: "Transport")) {
                InfoButtonView(title: "Transport")
            }
            
            NavigationLink(destination: InfoView(info: destination.mustSee, title: "Must See")) {
                InfoButtonView(title: "Must See")
            }
            
            NavigationLink(destination: InfoView(info: destination.hotels, title: "Hotels")) {
                InfoButtonView(title: "Hotels")
            }
        }
        .padding()
    }
}
