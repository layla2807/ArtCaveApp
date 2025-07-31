//
//  WorldWritingTab.swift
//  ArtCaveApp
//
//  Created by Lina Mered on 7/29/25.
//

import SwiftUI
import SwiftData

struct WorldWritingTab: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    @State private var worldName = ""
    @State private var worldClimate = ""
    @State private var worldCulture = ""
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Spacer()
                Text("Write Your World")
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
                .frame(height: 50)
            HStack{
                Text("Name:")
                TextField("Insert World Name", text: $worldName)
            }
            Spacer()
                .frame(height: 50)
            HStack{
                Text("Climate:")
                TextField("Insert World Climate", text: $worldClimate)
            }
           Spacer()
                .frame(height: 50)
            HStack{
                Text("Culture:")
                //TextField("Insert Character Backstory", text: $backStory)
            }
            TextField("Insert World Culture", text: $worldCulture)
            Spacer()
                .frame(height: 50)
            
            HStack{
                Spacer()
                Button("Save"){
                let newWorld = World(name: worldName, climate: worldClimate, culture: worldCulture)
                
                modelContext.insert(newWorld)
                
                worldName = ""
                worldClimate = ""
                worldCulture = ""
                dismiss()
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
    WorldWritingTab()
        .modelContainer(for: World.self, inMemory: true)
}
