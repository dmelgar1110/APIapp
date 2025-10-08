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
    var isLoading = false
    var errorMessage: String?

    func getFilms() async {
        isLoading = true
        errorMessage = ""

        defer { isLoading = false } // garantiza que se apague loading al final

        guard let url = URL(string: "https://swapi.dev/api/films/") else {
            errorMessage = "Error de url"
            return
        }

        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard (response as? HTTPURLResponse)?.statusCode == 200 else {
                errorMessage = "Error de conexión"
                return
            }

            let decoded = try JSONDecoder().decode(FilmResponse.self, from: data)
            arrFilm = decoded.results.sorted { $0.episode_id < $1.episode_id }

        } catch {
            errorMessage = error.localizedDescription
        }
    }
}

