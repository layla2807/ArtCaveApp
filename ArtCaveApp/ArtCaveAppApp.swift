//
//  ArtCaveAppApp.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/27/25.
//
import SwiftUI
import SwiftData
@main
struct ArtCaveAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
             StartView()
           //         .modelContainer(for: WritingWork.self)
            }
        }
        .modelContainer(for: [Character.self, WritingWork.self, World.self])
    }
}
