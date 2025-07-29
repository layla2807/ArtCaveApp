//
//  CharacterListView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct CharacterListView: View {
    var body: some View {
        HStack{
            NavigationLink(destination: CharacterWritingTab()){
                Text("+")
                    .font(.system(size:30))
                    .padding()
                    .frame(width: 50)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
          
        }
        
            
    }
}

#Preview {
    CharacterListView()
}
