//
//  ProductDetailHeaderView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 11/08/26.
//

import SwiftUI

struct ProductDetailHeaderView: View {
    
    let product: ProductType
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 20)
            
            Text(product.name)
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.top)
            
            Text(product.description)
                .padding(.horizontal)
            
            Text(product.formattedPrice)
                .font(.title3)
                .fontWeight(.bold)
                .padding(.horizontal)
        }
    }
}

#Preview {
    ProductDetailHeaderView(product: storesMock[0].products[0])
}
