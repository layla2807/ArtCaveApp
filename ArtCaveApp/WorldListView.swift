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
