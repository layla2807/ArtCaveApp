//
//  WorldListView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct WorldListView: View {
    
    @State private var showWorld = true
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: WorldWritingTab()){
                    Text("+")
                        .font(.system(size:30))
                        .padding()
                        .frame(width: 50)
                        .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                        .foregroundColor(.white)
                        .cornerRadius(15)
                }
            }
            
            if showWorld {
                WorldView(worldName: "")
            }

        }
    }
}

#Preview {
    WorldListView()
}
