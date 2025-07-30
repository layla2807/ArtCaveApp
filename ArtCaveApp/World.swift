//
//  World.swift
//  ArtCaveApp
//
//  Created by Lina Mered on 7/30/25.
//

import Foundation
import SwiftData

 

@Model

class World {

    var name: String

    var climate: String

    var culture: String

 

    init(name: String, climate: String, culture: String) {

        self.name = name

        self.climate = climate

        self.culture = culture

    }

}






