//
//  FilmsView.swift
//  AppApi
//
//  Created by Alumno on 06/10/25.
//

import SwiftUI

struct FilmsView: View {
    @State var filmsVM = FilmsViewModel()
    
    var body: some View {
        NavigationStack {
            List(filmsVM.arrFilm) { film in
                NavigationLink(destination: FilmDetailView(film: film)) {
                    FilmRowView(film: film)
                }
            }
            .navigationTitle("Películas de Star Wars")
            .task {
                await filmsVM.getFilms()
            }
            .overlay {
                if filmsVM.isLoading {
                    ProgressView("Loading...")
                } else if let error = filmsVM.errorMessage {
                    Text(error).foregroundColor(.red)
                }
            }
        }
    }
}

struct FilmRowView: View {
    var film: Film
    
    var body: some View {
        VStack(alignment:.leading) {
            Image(film.title)
                .resizable()
                .frame(width: 325, height: 200)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(film.title)
                    .font(.headline)
                Text("Fecha: \(film.release_date)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    FilmsView()
}

