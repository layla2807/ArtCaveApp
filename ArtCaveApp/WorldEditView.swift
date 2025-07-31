//
//  WorldEditView.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/31/25.
//

import SwiftUI

import SwiftData

struct WorldEditView: View {
    @Bindable var world: World
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
                .frame(height: 50)
            HStack {
                Text("Edit Your World")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                    .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
                    .cornerRadius(15)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            Spacer()
            
            HStack{
                Text("Name:")
                TextField("Edit World Name", text: $world.name)
            }
            Spacer().frame(height: 50)
            
            HStack {
                Text("Climate:")
                TextField("Edit Climate", text: $world.climate)
            }
            Spacer().frame(height: 50)
            
            HStack {
                Text("Culture:")
            }
            TextField("Edit Culture", text: $world.culture)
            Spacer()
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Done") {
                    dismiss()
                }
            }
        }
    }
}
