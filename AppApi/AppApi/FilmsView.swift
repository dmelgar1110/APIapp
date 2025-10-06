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
                    HStack {
                        Image(film.title).resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 80, height: 120)
                        .cornerRadius(8)

                        VStack(alignment: .leading) {
                            Text(film.title)
                                .font(.headline)
                            Text("Release: \(film.release_date)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationTitle("Star Wars Films")
            .task {
                await viewModel.fetchFilms()
            }
            .overlay {
                if viewModel.isLoading {
                    ProgressView("Loading...")
                } else if let error = viewModel.errorMessage {
                    Text(error).foregroundColor(.red)
                }
            }
        }
    }
}

#Preview {
    FilmsView()
}
