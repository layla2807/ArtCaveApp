//
//  CharacterWritingTab.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct CharacterWritingTab: View {
    @State private var charName = ""
    var body: some View {
        VStack{
            HStack{
                Text("Name:")
                TextField("Insert Character Name", text: $charName)
                
            }
            .padding()
        }
    }
}

#Preview {
    CharacterWritingTab()
}
