//
//  FilmsViewModel.swift
//  AppApi
//
//  Created by Alumno on 06/10/25.
//

import Foundation

@MainActor
@Observable
class FilmsViewModel {
    var arrFilm = [Film]()
    var service = ApiService()
    var isLoading = false
    var errorMessage: String?
    
    func getFilms() async throws{
        isLoading = true
        errorMessage = ""

        do {
            let response = try await service.getData(from: "https://swapi.dev/api/films", as: FilmResponse.self)
            self.arrFilm = response.results.sorted { $0.episode_id < $1.episode_id }
        } catch {
            errorMessage = error.localizedDescription
        }

        isLoading = false
    }
}
