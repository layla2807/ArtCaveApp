//
//  WriteView.swift
//  ArtCaveApp
//
//  Created by ANTS on 7/28/25.
//
import SwiftUI
import SwiftData
struct WriteView: View {
    
    @Bindable var writingWork: WritingWork
    @Environment(\.modelContext) var modelContext
    @Binding var showNewWork: Bool
    
    var body: some View {
        VStack {
            Text("Writing")
                .font(.title)
            TextField("Type your title here...", text: $writingWork.title, axis: .vertical)
                .font(.title3)
            
            TextField("Type here...", text: $writingWork.workText, axis: .vertical)
                
            Button {
                addWork()
                showNewWork = false
            } label: {
                Text("Save")
                }
        }
        .padding([.leading, .bottom, .trailing], 40.0)
    }
    
    func addWork() {
        let writeWork = WritingWork(title: writingWork.title, workText: writingWork.workText)
        modelContext.insert(writeWork)
    }
    
}
#Preview {
    WriteView(writingWork: WritingWork(title: "", workText: ""), showNewWork: .constant(true))
}
