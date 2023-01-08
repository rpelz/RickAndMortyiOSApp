//
//  RMCharacterEpisodeCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Robert Pelz on 07.01.23.
//

import Foundation

final class RMCharacterEpisodeCollectionViewCellViewModel {
    private let episodeDataUrl: URL?
    
    init(episodeDataUrl: URL?) {
        self.episodeDataUrl = episodeDataUrl
    }
}

