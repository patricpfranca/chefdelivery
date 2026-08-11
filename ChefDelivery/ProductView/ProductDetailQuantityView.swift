//
//  ProductDetailQuantityView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 11/08/26.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    
    @State private var productQuantity = 1
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Quantidade")
                .font(.title3)
                .fontWeight(.bold)
            
            HStack {
                Button {
                    if productQuantity > 1 {
                        productQuantity -= 1
                    }
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                Text("\(productQuantity)")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Button {
                    productQuantity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .fontWeight(.bold)
                }

            }
        }
    }
}

#Preview {
    ProductDetailQuantityView()
}
