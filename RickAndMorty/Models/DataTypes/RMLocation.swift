//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Anil Kumar Shukla on 05/07/25.
//

import Foundation

struct RMLocation: Codable {
    let id: String
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
