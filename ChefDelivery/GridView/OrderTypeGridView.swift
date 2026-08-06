//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 06/08/26.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    var body: some View {
        LazyHGrid(rows: [
            GridItem(.fixed(100)),
            GridItem(.fixed(100)),
            GridItem(.fixed(100)),
        ]) {
            ForEach(ordersMock) { orderItem in
                Text(orderItem.name)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    OrderTypeGridView()
}
