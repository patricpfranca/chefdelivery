//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 06/08/26.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    let orders: [String] = ["Restaurantes", "Farmácia", "Descontos", "Gourmet", "Mercados", "Pets", "Bebidas"]
    
    var body: some View {
        LazyHGrid(rows: [
            GridItem(.fixed(100)),
            GridItem(.fixed(100)),
            GridItem(.fixed(100)),
        ]) {
            ForEach(orders, id: \.self) { orderItem in
                Text(orderItem)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    OrderTypeGridView()
}
