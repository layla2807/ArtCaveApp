//
//  CharacterView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI

struct CharacterView: View {
    var charName: String
    var body: some View {
        Text("Character View")
        ForEach(Array(charName),id:\.self) {
            char in Text("The character's name is \(charName) for this story")
        }
    }
}

struct CharacterView_previews: PreviewProvider{
    static var previews: some View {
        CharacterView(charName: "")
    }
}
