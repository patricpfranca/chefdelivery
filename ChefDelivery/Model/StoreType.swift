//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 10/08/26.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let distance: Double
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
