//
//  FilmResponse.swift
//  AppApi
//
//  Created by Alumno on 08/10/25.
//


import Foundation

struct FilmResponse: Decodable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [Film]
}

