//
//  WorldWritingTab.swift
//  ArtCaveApp
//
//  Created by Lina Mered on 7/29/25.
//

import SwiftUI

struct WorldWritingTab: View {
    
    @State private var worldName = ""
    @State private var worldClimate = ""
    @State private var worldCulture = ""
    
    var body: some View {
        VStack(alignment:.leading){
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
            
           Button("Save"){
               }
          
        }
        .padding()

    }
}

#Preview {
    WorldWritingTab()
}
