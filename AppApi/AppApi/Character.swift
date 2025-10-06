//
//  Character.swift
//  AppApi
//
//  Created by Alumno on 06/10/25.
//

import Foundation

struct Character : Decodable, Identifiable{
    var id = UUID()
    var birth_year: String
    var eye_color: String
    var films: [String]
    var gender: String
    var hair_color: String
    var height: String
    var homeworld: String
    var mass: String
    var name: String
    var skin_color: String
    var created: String
    var edited: String
    var species: [String]
    var starships: [String]
    var url: String
    var vehicles: [String]

    
    enum CodingKeys: String, CodingKey {
        case birth_year
        case eye_color
        case films
        case gender
        case hair_color
        case height
        case homeworld
        case mass
        case name
        case skin_color
        case created
        case edited
        case species
        case starships
        case url
        case vehicles
    }
}

