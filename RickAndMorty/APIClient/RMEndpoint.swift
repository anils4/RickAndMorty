//
//  EMEndpoint.swift
//  RickAndMorty
//
//  Created by Anil Kumar Shukla on 11/07/25.
//

import Foundation


/// represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// End point to egt character info
    case character
    /// endpoint to get episode info
    case episode
    /// endpoint to get location info
    case location
}
