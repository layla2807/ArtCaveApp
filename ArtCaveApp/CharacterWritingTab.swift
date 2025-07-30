//
//  CharacterWritingTab.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI
import SwiftData

struct CharacterWritingTab: View {
    @State private var charName = ""
    @State private var backStory = ""
    @State private var Age = ""
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        VStack(alignment:.leading){
            Spacer()
                .frame(height: 50)
            HStack{
                Spacer()
                Text("Write Your Character")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 300)
                    .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                    .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
                    .cornerRadius(15)
                Spacer()
            }
            Spacer()
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
            Spacer()
            HStack{
                Spacer()
                Button("Save"){
                    let newCharacter = Character(name: charName, age: Age, backstory: backStory)
                                    modelContext.insert(newCharacter)
                                    charName = ""
                                    Age = ""
                                    backStory = ""
                }
                .font(.title3)
                .fontWeight(.bold)
                .padding()
                .frame(width: 150)
                .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
                .cornerRadius(15)
                Spacer()
            }
          
        }
        .padding()
    }
}

#Preview {
    CharacterWritingTab()
}
