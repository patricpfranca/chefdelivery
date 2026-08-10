//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 09/08/26.
//

import SwiftUI

struct StoreItemView: View {
    
    let order: OrderType
    
    var body: some View {
        HStack {
            Image(order.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            VStack {
                Text(order.name)
                    .font(.subheadline)
            }
            
            Spacer()
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreItemView(order: OrderType(id: 1, name: "Monstro Burguer", image: "monstro-burger-logo"))
}
