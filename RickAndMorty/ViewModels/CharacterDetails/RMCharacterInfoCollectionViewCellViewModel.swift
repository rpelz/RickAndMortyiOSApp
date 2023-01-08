//
//  RMCharacterInfoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Robert Pelz on 07.01.23.
//

import Foundation

final class RMCharacterInfoCollectionViewCellViewModel {
    public var title: String
    public var value: String
    init(title: String, value: String) {
        self.title = title
        self.value = value
    }
}
