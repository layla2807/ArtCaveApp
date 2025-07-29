//
//  CharacterListView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct CharacterListView: View {
    var body: some View {
        Button("+") {
                   // Action to perform when the button is tapped
                   print("Button was tapped!")
               }
        .font(.system(size:30))
        .padding()
        .frame(width: 50)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(15)
    }
}

#Preview {
    CharacterListView()
}
