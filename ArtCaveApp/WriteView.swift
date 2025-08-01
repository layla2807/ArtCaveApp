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
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
                .cornerRadius(15)
                .padding(.top, 20)
            
            Spacer().frame(height: 40)
            
            TextField("Type your title here...", text: $writingWork.title, axis: .vertical)
                .font(.title3)
            
            TextField("Type here...", text: $writingWork.workText, axis: .vertical)
            
            Button {
                addWork()
                showNewWork = false
            } label: {
                Text("Save")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 150)
                    .background(Color(red: 189/255, green: 173/255, blue: 150/255))
                    .foregroundColor(Color(red: 78/255, green: 57/255, blue: 46/255))
                    .cornerRadius(15)
            }
            .padding(.bottom, 40)
        }
        .padding([.leading, .trailing])
    }
    func addWork() {
        let writeWork = WritingWork(title: writingWork.title, workText: writingWork.workText)
        modelContext.insert(writeWork)
    }
}
#Preview {
    WriteView(writingWork: WritingWork(title: "", workText: ""), showNewWork: .constant(true))
}
