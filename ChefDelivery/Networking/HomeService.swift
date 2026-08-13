//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 12/08/26.
//

import Foundation

enum RequestError: Error {
    case invalidURL
    case errorRequest(error: String)
    
}

struct HomeService {
    func fetchData() async throws -> Result<[StoreType], RequestError> {
        guard let url = URL(string: "https://private-b6a535-chefdelivery34.apiary-mock.com/stores") else {
            return .failure(.invalidURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let storesObject = try JSONDecoder().decode([StoreType].self, from: data)
        
        return .success(storesObject)
    }
}
