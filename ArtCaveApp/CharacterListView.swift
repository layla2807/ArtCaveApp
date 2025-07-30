//
//  CharacterListView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct CharacterListView: View {
    @State private var showCharacter = true
    
    var body: some View {
        VStack {
            HStack{
                NavigationLink(destination: CharacterWritingTab()){
                    Text("+")
                        .font(.system(size:30))
                        .padding()
                        .frame(width: 50)
                        .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                        .foregroundColor(.white)
                        .cornerRadius(15)
                }
                
            }
            if showCharacter {
                CharacterView(charName: "")
            }
        }
        
            
    }
}

#Preview {
    CharacterListView()
}
