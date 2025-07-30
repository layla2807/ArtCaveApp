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
        VStack(alignment:.leading){
            Spacer()
                .frame(height: 50)
            HStack{
                Text("Name:")
                TextField("Insert Character Name", text: $charName)
            }
            Spacer()
                .frame(height: 50)
            HStack{
                Text("Age:")
                TextField("Insert Character Age", text: $Age)
            }
           Spacer()
                .frame(height: 50)
            HStack{
                Text("Backstory:")
                //TextField("Insert Character Backstory", text: $backStory)
            }
            TextField("Insert Character Backstory", text: $backStory)
            Spacer()
                .frame(height: 50)
            
           Button("Save"){
               }
          
        }
        .padding()
    }
}

#Preview {
    CharacterWritingTab()
}
