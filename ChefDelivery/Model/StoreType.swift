//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 10/08/26.
//

import Foundation
import Combine

nonisolated class StoreType: Identifiable, ObservableObject, Decodable, @unchecked Sendable {
  let id: Int
  let name: String
  let distance: Double
  let logoImage: String
  let headerImage: String
  let location: String
  let stars: Int
  let products: [ProductType]
    
    private enum CodingKeys: String, CodingKey {
        case id, name, location, distance, stars, products
        case logoImage = "logo_image"
        case headerImage = "header_image"
    }
    
    init(id: Int, name: String, distance: Double, logoImage: String, headerImage: String, location: String, stars: Int, products: [ProductType]) {
        self.id = id
        self.name = name
        self.distance = distance
        self.logoImage = logoImage
        self.headerImage = headerImage
        self.location = location
        self.stars = stars
        self.products = products
    }
}
