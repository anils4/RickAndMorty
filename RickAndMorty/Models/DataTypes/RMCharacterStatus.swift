//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Anil Kumar Shukla on 11/07/25.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
    
}
