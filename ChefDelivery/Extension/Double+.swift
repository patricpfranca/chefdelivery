//
//  Double+.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 10/08/26.
//

import Foundation

extension Double {
    nonisolated func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
