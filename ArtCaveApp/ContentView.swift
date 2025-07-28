//
//  ContentView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/27/25.
//

import SwiftUI

struct StartView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        VStack {
            Text("Art Cave")
                .font(.largeTitle)
                .fontWeight(.bold)
            Image("BookIcon")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 300, height: 300)
                .shadow(radius: 15)
            Spacer()
            Text("Your creative archive!")
            Button(action: {
                path.append("mainMenu")
            }) {
                Text("START")
                    .font(.headline)
                    .padding()
                    .frame(width: 200)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
            }
            .padding()
            .navigationDestination(for: String.self) { value in
                if value == "mainMenu" {
                    MainMenuView()
                }
            }
        }
    }

#Preview {
    StartView()
}
