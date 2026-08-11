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
            ProductDetailHeaderView(product: product)
            
            Spacer()
            
            ProductDetailQuantityView()
            
            Spacer()
            
            ProductDetailButtonView()
        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}

struct ProductDetailButtonView: View {
    var body: some View {
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
