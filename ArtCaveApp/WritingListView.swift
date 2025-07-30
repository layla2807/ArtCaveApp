//
//  WritingListView.swift
// ArtCaveApp
//
//  Created by ANTS on 7/28/25.
//
import SwiftUI
import SwiftData
struct WritingListView: View {
    
    @State private var showNewWork: Bool = false
    @Query var writeWorks: [WritingWork]
    
    var body: some View {
        VStack {
            HStack {
                Text("Writing")
                    .font(.title)
                Spacer()
                Button {
                        showNewWork = true
                } label: {
                    Text("+")
                        .font(.largeTitle)
                }
            }
            .padding(.all, 30.0)
            Spacer()
            List {
                ForEach(writeWorks) { writingWork in
                    Text(writingWork.title)
                    
                }
            }
        }
        .fullScreenCover(isPresented: $showNewWork) {
                    WriteView(writingWork: WritingWork(title: "", isImportant: false), showNewWork: $showNewWork)
                }
    }
}
#Preview {
    WritingListView()
        .modelContainer(for: WritingWork.self, inMemory: true)
}
