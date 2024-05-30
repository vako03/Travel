//
//  InfoView.swift
//  Travel
//
//  Created by valeri mekhashishvili on 30.05.24.
//

import SwiftUI

struct InfoView: View {
    let info: String
    let title: String
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(info)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            .padding(.horizontal, 10)
            
            Button(action: {
                restartApplication()
            }) {
                Text("Go to main screen")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
                    .shadow(radius: 3)
            }
            .padding()
        }
    }
    
    func restartApplication() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            if let window = windowScene.windows.first {
                window.rootViewController = UIHostingController(rootView: ContentView())
            }
        }
    }
}
