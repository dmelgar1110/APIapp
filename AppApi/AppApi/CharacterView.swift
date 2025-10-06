//
//  CharacterView.swift
//  AppApi
//
//  Created by Alumno on 06/10/25.
//

import SwiftUI

struct CharacterView: View {
    let character : Character
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image(character.name)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .shadow(radius: 8)
                    .padding(.horizontal)
                
                VStack(spacing: 15) {
                    Text(character.name)
                        .font(.title)
                        .bold()
                    
                    HStack{
                        Image(character.country)
                            .resizable()
                            .frame(width: 20, height: 15)
                        Text(character.country)
                            .font(.title3)
                            .foregroundColor(.secondary)
                    }
                    
                    
                    Divider()
                    
                    VStack(spacing: 10) {
                        HStack {
                            Text("Grand Slams:")
                            Spacer()
                            Text("\(character.grandSlams)")
                        }
                        HStack {
                            Text("Títulos en toda su carrera:")
                            Spacer()
                            Text("\(character.careerTitles)")
                        }
                        HStack {
                            Text("Semanas como No.1:")
                            Spacer()
                            Text("\(character.weeksAtNo1)")
                        }
                        HStack {
                            Text("Win/Loss:")
                            Spacer()
                            Text(character.winLoss)
                        }
                    }
                    .font(.body)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Link(destination: URL(string: character.highlightsURL)!) {
                    Label("Ver Highlights", systemImage: "play.circle.fill")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 10)
                        .background(Color(red: 0.0, green: 0.08, blue: 0.3))
                        .clipShape(Capsule())
                }
                .padding(.top, 20)
            }
            .navigationTitle(character.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CharacterView()
}
