//
//  FilmDetailView.swift
//  AppApi
//
//  Created by Alumno on 06/10/25.
//

import SwiftUI

struct FilmDetailView: View {
    var film: Film
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(film.title)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                
                Text(film.title)
                    .font(.largeTitle)
                    .bold()
                
                Text("Fecha de estreno: \(film.release_date)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Divider()
                
                Text("Párrafo al inicio de la película")
                    .font(.headline)
                
                Text(film.opening_crawl)
                    .font(.body)
                    .lineSpacing(4)
                
                Divider()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Director: \(film.director)")
                    Text("Productor: \(film.producer)")
                    Text("Episodio: \(film.episode_id)")
                }
                .font(.subheadline)
                
                Divider()
                
                Text("Personajes: \(film.characters.count)")
                    .font(.headline)
                
                Text("Planetas: \(film.planets.count)")
                    .font(.headline)
                    .padding(.top, 8)
                
                Text("Naves: \(film.starships.count)")
                    .font(.headline)
                    .padding(.top, 8)
                
                Text("Vehículos: \(film.vehicles.count)")
                    .font(.headline)
                    .padding(.top, 8)
                
                Text("Especies: \(film.species.count)")
                    .font(.headline)
                    .padding(.top, 8)
        
                Spacer()
            }
            .padding()
        }
        .navigationTitle(film.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    // Mock completo de prueba
    FilmDetailView(film: Film(
        title: "A New Hope",
        episode_id: 4,
        opening_crawl: "It is a period of civil war...",
        director: "George Lucas",
        producer: "Gary Kurtz, Rick McCallum",
        release_date: "1977-05-25",
        characters: ["Luke Skywalker", "Darth Vader"],
        planets: ["Tatooine", "Alderaan"],
        starships: ["X-wing", "TIE Fighter"],
        vehicles: ["Sand Crawler", "Speeder Bike"],
        species: ["Human", "Droid"],
        created:"",
        edited:"",
        url: "https://swapi.dev/api/films/1/"
    ))
}

