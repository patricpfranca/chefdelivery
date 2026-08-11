//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 11/08/26.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                
                Text(product.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                Text(product.description)
                    .padding(.horizontal)
                
                Text(product.formattedPrice)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal)
            }
            
            Spacer()
            
            Button {
                //
            } label: {
                HStack {
                    Image(systemName: "cart")
                    
                    Text("Adicionar ao carrinho")
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .font(.title3)
                .fontWeight(.bold)
                .background(Color("ColorRed"))
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: 32))
                .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x: 6, y: 8)
            }

        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}
