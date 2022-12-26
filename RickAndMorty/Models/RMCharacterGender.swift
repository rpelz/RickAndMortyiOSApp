//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Robert Pelz on 26.12.22.
//

import Foundation

enum RMCharacterGender: String, Codable {
    // 'Female', 'Male', 'Genderless' or 'unknown'
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}
