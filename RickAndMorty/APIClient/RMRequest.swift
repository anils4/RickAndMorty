//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Anil Kumar Shukla on 11/07/25.
//

import Foundation

/// Object  that represets single API call
final class RMRequest {
     //Base url
    // Endpoint
    // Path Compopnents
    // Quesry Parameter
    
    /// API constants
    private struct Constants {
        static let baseURLString = "https://rickandmortyapi.com/api/"
    }
    /// Desired Endpoint
    let endpoint: RMEndpoint
    /// Query Argument for API
    let pathComponents: [String]
    /// Query parameter for API
    let queryParameters: [URLQueryItem]
    
    // Constructed URL for the API request in the String format
    private var urlString: String {
        var string = Constants.baseURLString
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach ({ string += "/\($0)"})
        }
        if !queryParameters.isEmpty {
            string += "?"
            let argumentedString = queryParameters.compactMap ({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentedString
        }
        return string
    }
    /// computed and construjcted API url
    public var url: URL? {
        return URL(string: urlString)
    }
    /// desired HTTP method
    public let httpMethod: String = "GET"
    
    // MARK: Public
    /// construct request
    /// - Parameters:
    ///  - endpoint: Target Endpoint
    ///  - pathComponent: collection of path component
    ///   - queryParameters: collection of query parameter
    public init(endpoint: RMEndpoint,
         pathComponents: [String] = [],
         queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
}
