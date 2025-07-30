//
//  Character.swift
//  ArtCaveApp
//
//  Created by Scholar on 7/30/25.
//

import Foundation
import SwiftData

@Model
class Character {
    var name: String
    var age: String
    var backstory: String

    init(name: String, age: String, backstory: String) {
        self.name = name
        self.age = age
        self.backstory = backstory
    }
}
