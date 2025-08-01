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
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
                    .padding(.vertical, 12)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 239/255, green: 233/255, blue: 219/255))
                    .padding(.top, 0)
                Spacer()
                Button {
                        showNewWork = true
                } label: {
                    Text("+")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
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
