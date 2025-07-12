//
//  RMGetAllCharacterResponse.swift
//  RickAndMorty
//
//  Created by Anil Kumar Shukla on 12/07/25.
//

import Foundation

struct RMGetAllCharacterResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    let info: Info
    let results: [RMCharacter]
}
