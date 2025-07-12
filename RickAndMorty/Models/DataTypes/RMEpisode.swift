//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Anil Kumar Shukla on 05/07/25.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let characters: [String]
    let episode: String
    let created: String
    let url: String
}
