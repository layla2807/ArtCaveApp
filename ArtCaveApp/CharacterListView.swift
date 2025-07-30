//
//  CharacterListView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI
import SwiftData

struct CharacterListView: View {
   // @State private var showCharacter = true
    @Query var charList: [Character]
    
    var body: some View {
        VStack {
                NavigationLink(destination: CharacterWritingTab()){
                    Text("+")
                        .font(.system(size:30))
                        .padding()
                        .frame(width: 50)
                        .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                        .foregroundColor(.white)
                        .cornerRadius(15)
            }
            List(charList) { item in
                                VStack(alignment: .leading) {
                                    Text("Name: \(item.name)")
                                    Text("age: \(item.age)")
                                    Text("backstory: \(item.backstory)")
                                }
                            }
        }
        
            
    }
}

#Preview {
    CharacterListView()
        .modelContainer(for: Character.self, inMemory: true)
}
