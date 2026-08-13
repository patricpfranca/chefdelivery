//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 10/08/26.
//

import Foundation

nonisolated struct ProductType: Identifiable, Codable, Sendable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$" + price.formatPrice()
    }
}
