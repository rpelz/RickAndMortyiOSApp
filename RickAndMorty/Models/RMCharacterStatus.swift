//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Robert Pelz on 26.12.22.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
