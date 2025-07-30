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
    @Environment(\.modelContext) var modelContext
    
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
                .onDelete(perform: deleteWork)
            }
        }
        .fullScreenCover(isPresented: $showNewWork) {
                    WriteView(writingWork: WritingWork(title: "", workText: ""), showNewWork: $showNewWork)
                }
    }
    
    func deleteWork(at offsets: IndexSet) {
        for offset in offsets {
            let writingWork = writeWorks[offset]
            modelContext.delete(writingWork)
        }
    }
    
}
#Preview {
    WritingListView()
        .modelContainer(for: WritingWork.self, inMemory: true)
}
