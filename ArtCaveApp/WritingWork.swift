//
//  WritingWork.swift
//  ArtCaveApp
//
//  Created by ANTS on 7/28/25.
//
import Foundation
import SwiftData
@Model
class WritingWork {
    var title: String
    var workText: String
    
    init(title: String, workText: String) {
        self.title = title
        self.workText = workText
    }
}
