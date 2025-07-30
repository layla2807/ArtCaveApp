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
    var isImportant: Bool
    
    init(title: String, isImportant: Bool) {
        self.title = title
        self.isImportant = isImportant
    }
    
}
