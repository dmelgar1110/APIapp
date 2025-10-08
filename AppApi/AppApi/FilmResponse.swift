import Foundation

struct FilmResponse: Decodable, Identifiable {
    var id = UUID()
    var count: Int
    var next: String?
    var previous: String?
    var results: [Film]
}

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
}
