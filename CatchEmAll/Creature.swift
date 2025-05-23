//
//  Creature.swift
//  CatchEmAll
//
//  Created by Robert Beachill on 06/05/2025.
//

import Foundation
struct Creature: Codable, Identifiable, Equatable {
    let id = UUID().uuidString
    var name: String
    var url: String // url for detail on Pokemon
    
    enum CodingKeys: CodingKey { // ignore the id property when decoding
        case name
        case url
    }
}
