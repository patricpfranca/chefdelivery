//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 10/08/26.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    @Environment(\.dismiss) var dismiss
    @State private var selectedProduct: ProductType?
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                
                StoreDetailHeaderView(store: store)
                
                StoreDetailProductsView(products: store.products)
            }
            .navigationTitle(store.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack(spacing: 4) {
                            Image(systemName: "cart")
                            
                            Text("Lojas")
                        }
                        .foregroundStyle(Color("ColorRed"))
                    }

                }
            }
        }
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
