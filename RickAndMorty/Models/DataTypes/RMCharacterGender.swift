//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Anil Kumar Shukla on 11/07/25.
//

import Foundation
/// setting up character gender
enum RMCharacterGender: String, Codable {
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unknown = "unknown"
}
