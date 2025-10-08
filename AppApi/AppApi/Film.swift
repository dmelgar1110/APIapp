//
//  Film.swift
//  AppApi
//
//  Created by Alumno on 06/10/25.
//

import Foundation

struct Film: Decodable, Identifiable {
    var id = UUID()
    var title: String
    var episode_id: Int
    var opening_crawl: String
    var director: String
    var producer: String
    var release_date: String
    var characters: [String]
    var planets: [String]
    var starships: [String]
    var vehicles: [String]
    var species: [String]
    var created: String
    var edited: String
    var url: String
    
    private enum CodingKeys: String, CodingKey {
        case title
        case episode_id
        case opening_crawl
        case director
        case producer
        case release_date
        case characters
        case planets
        case starships
        case vehicles
        case species
        case created
        case edited
        case url
    }
}
