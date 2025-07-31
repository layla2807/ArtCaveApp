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
    
    var body: some View {
        VStack {
            
            NavigationLink(destination: WorldWritingTab()){
                Text("+")
                    .font(.system(size:30))
                    .padding()
                    .frame(width: 50)
                    .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
            List{ ForEach(worldList) { item in
                
                VStack(alignment: .leading) {
                    
                    Text("name: \(item.name)")
                    
                    Text("climate: \(item.climate)")
                    
                    Text("culture: \(item.culture)")
                    
                }
                
            }
            .onDelete(perform: deleteWorld)
                
            }
            
        }
    }
    func deleteWorld(at offsets: IndexSet) {
        for offset in offsets {
            let charWorld = worldList[offset]
            modelContext.delete(charWorld)
        }
    }
    
}

#Preview {
    WorldListView()
        .modelContainer(for: World.self, inMemory: true)
}
