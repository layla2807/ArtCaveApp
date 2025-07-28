//
//  MainMenuView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/27/25.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("What do you want to create?")
                .font(.title2)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    NavigationView {
        MainMenuView()
    }
}
