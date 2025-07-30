//
//  WorldView.swift
//  ArtCaveApp
//
//  Created by Lina Mered on 7/30/25.
//

import SwiftUI

struct WorldView: View {
    
    var worldName: String
    
    var body: some View {
        Text("World View")
        ForEach(Array(worldName),id:\.self) {
            world in Text("The world's name is \(worldName) for this story")
        }
    }
}

struct WorldView_previews: PreviewProvider{
    static var previews: some View {
        WorldView(worldName: "")
    }
}

