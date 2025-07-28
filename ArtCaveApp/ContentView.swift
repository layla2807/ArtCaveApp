//
//  ContentView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/27/25.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView{
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
                Divider()
                Text("Your creative archive.")
                NavigationLink(destination: MainMenuView()){
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
        }
    }
}
#Preview {
    StartView()
}
