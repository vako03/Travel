//
//  DestinationListItemView.swift
//  Travel
//
//  Created by valeri mekhashishvili on 30.05.24.
//

import SwiftUI

struct DestinationListItemView: View {
    let destination: Destination
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            AsyncImage(url: URL(string: destination.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .cornerRadius(10)
                    .colorMultiply(.white)
                    .shadow(color: .white, radius: 5)
            } placeholder: {
                Color.gray
                    .frame(height: 200)
                    .cornerRadius(10)
            }
            Color.black.opacity(0.4)
            
            Text(destination.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
        }
        .frame(height: 200)
    }
}
