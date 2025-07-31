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
                    VStack(alignment: .leading) {
                        Text("Name: \(item.name)")
                        Text("age: \(item.age)")
                        Text("backstory: \(item.backstory)")
                    }
                    .padding()
                    .frame(maxWidth: .infinity, minHeight: 180)
                    .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                    .cornerRadius(15)
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
