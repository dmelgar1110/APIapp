//
//  ApiService.swift
//  AppApi
//
//  Created by Alumno on 06/10/25.
//

import Foundation
class ApiService{
    func getData<T: Decodable>(from urlString: String, as type: T.Type) async throws -> T {
            guard let url = URL(string: urlString) else {
                throw URLError(.badURL)
            }
        
            let urlRequest = URLRequest(url: url)
        
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
            guard (response as? HTTPURLResponse)?.statusCode == 200 else {
                print("error")
                throw URLError(.badServerResponse)
            }

            return try JSONDecoder().decode(T.self, from: data)
        }
}
