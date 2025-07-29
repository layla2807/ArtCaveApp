//
//  WorldListView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct WorldListView: View {
    var body: some View {
        HStack {
            NavigationLink(destination: WorldWritingTab()){
                Text("+")
                    .font(.system(size:30))
                    .padding()
                    .frame(width: 50)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
        }
    }
}

#Preview {
    WorldListView()
}
