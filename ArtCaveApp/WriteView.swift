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
            Text("Task Title:")
                .font(.title3)
            
            TextField("Enter the task description...", text: $writingWork.title, axis: .vertical)
            
            Toggle(isOn: $writingWork.isImportant) {
                Text("Is it important?")
                
            Button {
                addWork()
                showNewWork = false
            } label: {
                Text("Save")
                }
            }
        }
        .padding([.leading, .bottom, .trailing], 40.0)
    }
    
    func addWork() {
        let writeWork = WritingWork(title: writingWork.title, isImportant: writingWork.isImportant)
        modelContext.insert(writeWork)
    }
    
}
#Preview {
    WriteView(writingWork: WritingWork(title: "", isImportant: false), showNewWork: .constant(true))
}
