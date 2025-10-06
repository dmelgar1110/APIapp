//
//  Film.swift
//  AppApi
//
//  Created by Alumno on 06/10/25.
//

import Foundation

struct FilmResponse: Decodable, Identifiable{
    var id = UUID()
    var count:Int
    var next:String
    var previous:String
    var results:[Film]
    
    enum CodingKeys: String, CodingKey{
        case count
        case next
        case previous
        case results
    }
}


struct Film: Decodable, Identifiable{
    var id = UUID()
    var title:String
    var episode_id:Int
    var opening_crawl:String
    var director:String
    var producer:String
    var release_date:String
    var charactersURL:[String]
    var characters:[Character]?
    var planetsURL:[String]
    var starshipsURL:[String]
    var vehiclesURL:[String]
    var speciesURL:[String]
    var created:String
    var edited:String
    var url:String

    enum CodingKeys: String, CodingKey{
        case title
        case episode_id
        case opening_crawl
        case director
        case producer
        case release_date
        case charactersURL
        case planetsURL
        case starshipsURL
        case vehiclesURL
        case speciesURL
        case created
        case edited
        case url
    }
    
}
