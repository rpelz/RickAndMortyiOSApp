//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Robert Pelz on 02.01.23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
