//
//  DestinationListItem.swift
//  Travel
//
//  Created by valeri mekhashishvili on 30.05.24.
//

import SwiftUI

struct DestinationListItem: View {
    @ObservedObject var viewModel: DestinationViewModel
    
    var body: some View {
        NavigationLink(destination: DestinationDetailScreen(destination: viewModel.destination)) {
            DestinationListItemView(destination: viewModel.destination)
        }
    }
}
