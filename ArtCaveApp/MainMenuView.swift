//
//  MainMenuView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/27/25.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("What do you want to create?")
                .font(.title2)
                .fontWeight(.semibold)
            NavigationLink(destination: CharacterListView()) {
                          Text("Character")
                    .menuButtonStyle()
                      }
                      NavigationLink(destination: WorldListView()) {
                          Text("World")
                              .menuButtonStyle()
                      }
                      NavigationLink(destination: WritingListView()) {
                          Text("Writing")
                              .menuButtonStyle()
                      }
        }
        .padding()
        .navigationTitle("Main Menu")
    }
}
extension View {
    func menuButtonStyle() -> some View {
        self
            .font(.headline)
            .padding()
            .frame(width: 200)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(15)
    }
}

#Preview {
    NavigationView {
        MainMenuView()
    }
}
