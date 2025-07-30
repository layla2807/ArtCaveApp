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
            Text("MAIN MENU")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
                .padding(.vertical, 12)
                .frame(maxWidth: .infinity)
                .background(Color(red: 239/255, green: 233/255, blue: 219/255))
                .padding(.top, 0)
            Spacer()
            VStack(spacing: 20) {
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
            Spacer()
        }
        .padding()
    }
}
extension View {
    func menuButtonStyle() -> some View {
        self
            .font(.title2)
            .fontWeight(.bold)
            .padding()
            .frame(width: 200)
            .background(Color(red: 189/255, green: 173/255, blue: 150/255))
            .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
            .cornerRadius(15)
    }
}

#Preview {
    NavigationView {
        MainMenuView()
    }
}
