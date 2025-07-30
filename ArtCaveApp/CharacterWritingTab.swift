//
//  CharacterWritingTab.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct CharacterWritingTab: View {
    @State private var charName = ""
    @State private var backStory = ""
    @State private var Age = ""
    var body: some View {
        VStack{
            HStack{
                Text("Name:")
                TextField("Insert Character Name", text: $charName)
                
            }
            .padding()
            HStack{
                Text("Age:")
                TextField("Insert Character Age", text: $Age)
                
            }
            .padding()
            HStack{
                Text("Backstory:")
                //TextField("Insert Character Backstory", text: $backStory)
            }
            TextField("Insert Character Backstory", text: $backStory)
            .padding()
        }
    }
}

#Preview {
    CharacterWritingTab()
}
