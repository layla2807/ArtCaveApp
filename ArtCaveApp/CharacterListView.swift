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
    @Environment(\.modelContext) var modelContext
    
    let columns = [
        GridItem(.flexible(), spacing:  16),
        GridItem(.flexible(), spacing:  16)
    ]
    
    var body: some View {
        ScrollView {
            Text("CHARACTERS")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
                .padding(.vertical, 12)
                .frame(maxWidth: .infinity)
                .background(Color(red: 239/255, green: 233/255, blue: 219/255))
                .padding(.top, 0)
                .padding()
            
            LazyVGrid(columns: columns, spacing: 16, content: {
                
                NavigationLink(destination: CharacterWritingTab()) {
                    Text("+")
                        .font(.system(size: 60))
                        .frame(maxWidth: .infinity, minHeight: 180)
                        .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                        .foregroundColor(.white)
                        .cornerRadius(15)
                }
                ForEach(charList) { item in
                    ZStack(alignment: .topTrailing) {
                        VStack(alignment: .leading) {
                            Text("Name: \(item.name)")
                            Text("age: \(item.age)")
                            Text("backstory: \(item.backstory)")
                        }
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 180)
                        .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                        .cornerRadius(15)
                        
                        NavigationLink(destination: CharacterEditView(character: item)) {
                            Text("Edit")
                                .font(.caption)
                                .padding(6)
                                .background(Color.white.opacity(0.8))
                                .cornerRadius(8)
                                .padding(8)
                        }
                    }
                    .contextMenu {
                        Button(role: .destructive) {
                            modelContext.delete(item)
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                }
            })
            .padding()
                            }
        }
    }

#Preview {
    CharacterListView()
        .modelContainer(for: Character.self, inMemory: true)
}
