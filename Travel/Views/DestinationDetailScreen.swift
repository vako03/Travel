//
//  DestinationDetailScreen.swift
//  Travel
//
//  Created by valeri mekhashishvili on 30.05.24.
//

import SwiftUI

struct DestinationDetailScreen: View {
    let destination: Destination
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: destination.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxHeight: 400)
                    .cornerRadius(10)
                    .colorMultiply(.white)
                    .shadow(color: .white, radius: 5)
            } placeholder: {
                Color.gray
                    .frame(maxHeight: 310) 
                    .cornerRadius(10)
            }
            .padding()
            
            Text(destination.description)
                .foregroundColor(.white)
                .padding()
            
            HStack {
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
        .navigationTitle(destination.name)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct InfoButtonView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(8)
    }
}
