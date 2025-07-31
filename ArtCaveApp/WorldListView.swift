//
//  WorldListView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI
import SwiftData

struct WorldListView: View {
    
    //@State private var showWorld = true
    @Query var worldList: [World]
    @Environment(\.modelContext) var modelContext
    
    
    let columns = [
        GridItem(.flexible(), spacing:  16),
        GridItem(.flexible(), spacing:  16)]
    
    var body: some View {
        
        ScrollView {
            Text("WORLDS")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
                .padding(.vertical, 12)
                .frame(maxWidth: .infinity)
                .background(Color(red: 239/255, green: 233/255, blue: 219/255))
                .padding(.top, 0)
                .padding()

            LazyVGrid(columns: columns, spacing: 16, content: {
                NavigationLink(destination: WorldWritingTab()){
                    Text("+")
                        .font(.system(size: 60))
                        .frame(maxWidth: .infinity, minHeight: 180)
                        .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                        .foregroundColor(.white)
                        .cornerRadius(15)
                }
                ForEach(worldList) { item in
                    
                    ZStack(alignment: .topTrailing){
                        VStack(alignment: .leading) {
                            
                            Text("name: \(item.name)")
                            
                            Text("climate: \(item.climate)")
                            
                            Text("culture: \(item.culture)")
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 180)
                        .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                        .cornerRadius(15)
                        
                        NavigationLink(destination: WorldEditView(world: item)) {
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
    WorldListView()
        .modelContainer(for: World.self, inMemory: true)
}
