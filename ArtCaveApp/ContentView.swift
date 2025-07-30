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
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    Text("ART CAVE")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
                        .padding(.vertical, 12)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 239/255, green: 233/255, blue: 219/255))
                        .padding(.top, 0)
                    Spacer()
                    VStack(spacing: 20) {
                        Image("BookIcon")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 300, height: 300)
                            .shadow(radius: 15)
                        Divider()
                        Text("Your creative archive!")
                            .font(.title3)
                            .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
                        NavigationLink(destination: MainMenuView()){
                            Text("START")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding()
                                .frame(width: 280, height: 60)
                                .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                                .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
                                .cornerRadius(15)
                        }
                    }
                    Spacer()
                }
                .padding()
            }
        }
    }
}
#Preview {
    StartView()
}
