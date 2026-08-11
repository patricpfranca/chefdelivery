//
//  StoreDetailProductItemView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 11/08/26.
//

import SwiftUI

struct StoreDetailProductItemView: View {
    
    let product: ProductType
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(product.name)
                    .fontWeight(.bold)
                
                Text(product.description)
                    .foregroundStyle(.black.opacity(0.5))
                    .multilineTextAlignment(.leading)
                
                Text(product.formattedPrice)
            }
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 12))
                .frame(width: 120, height: 120)
                .shadow(color: .black.opacity(0.3), radius: 20, x: 6, y: 8)
        }
        .padding()
        .foregroundStyle(.black)
    }
}

#Preview {
    StoreDetailProductItemView(product: storesMock[0].products[0])
}
