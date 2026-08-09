//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 09/08/26.
//

import SwiftUI

struct CarouselItemView: View {
    
    let order: OrderType

    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner"))
        .padding()
}
