//
//  RMApiCacheManager.swift
//  RickAndMorty
//
//  Created by Robert Pelz on 14.01.23.
//

import Foundation

// Manages in memory session scoped API caches
final class RMApiCacheManager {
    // API URL: Data
    
    private var cacheDictionary: [
        RMEndpoint: NSCache<NSString, NSData>
    ] = [:]
    
    init() {
        setupCache()
    }
    
    // MARK: - Public
    
    public func cachedResponse(for endPoint: RMEndpoint, url: URL?) -> Data? {
        guard let targetCache = cacheDictionary[endPoint], let url = url else {
            return nil
        }
        let key = url.absoluteString as NSString
        return targetCache.object(forKey: key) as? Data
    }
    
    public func setCache(for endPoint: RMEndpoint, url: URL?, data: Data) {
        guard let targetCache = cacheDictionary[endPoint], let url = url else {
            return
        }
        let key = url.absoluteString as NSString
        targetCache.setObject(data as NSData, forKey: key)
    }
    
    // MARK: - Private
    
    private func setupCache() {
        RMEndpoint.allCases.forEach({ endpoint in
            cacheDictionary[endpoint] = NSCache<NSString, NSData>()
        })
    }
}
