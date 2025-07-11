//
//  RMService.swift
//  RickAndMorty
//
//  Created by Anil Kumar Shukla on 11/07/25.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// shared singleton instace
    static let shared = RMService()
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and morty API call
    /// - parameters:
    ///  - request: Request Instance
    ///  - completion: call back with data or Error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
