//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Robert Pelz on 26.12.22.
//

import Foundation

/// Object that represents a singlet API call
final class RMRequest {
    // Base url
    // https://rickandmortyapi.com/api/character/2
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    // Endpoint
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    // Path components
    /// Path components  for API if any
    private let pathComponents: Set<String>
    
    // Query parameters
    /// Query arguments for API if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request  in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & contsructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired API method
    public let httpMethod = "GET"
    
    /// Construct request
    /// - Parameters
    ///     - endpoint: Target endpoint
    ///     - pathComponents: Collection of Path components
    ///     - queryParameter: Collection of query parameters
    public init(endpoint: RMEndpoint,
         pathComponents: Set<String> = [],
         queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
