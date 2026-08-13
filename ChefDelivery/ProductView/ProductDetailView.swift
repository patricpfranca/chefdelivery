//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 11/08/26.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    @State private var productQuantity = 1
    @State private var showAlert = false
    
    @Environment(\.dismiss) var dismiss
    
    var service = HomeService()
    
    var body: some View {
        VStack {
            ProductDetailHeaderView(product: product)
            
            Spacer()
            
            ProductDetailQuantityView(productQuantity: $productQuantity)
            
            Spacer()
            
            ProductDetailButtonView {
                Task {
                    await confirmOrder()
                }
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("ChefDelivery"), message: Text("Pedido enviado com sucesso"))
        }
    }
    
    func confirmOrder() async {
        do {
            let result = try await service.confirmOrder(product: product)
            
            switch result {
            case .success(let message):
                showAlert = true
            case .failure(let error):
                print(error.localizedDescription)
                showAlert = false
            }
        } catch {
            print(error.localizedDescription)
            showAlert = false
        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}

struct ProductDetailButtonView: View {
    
    var onButtonPress: () -> Void
    
    var body: some View {
        Button {
            onButtonPress()
        } label: {
            HStack {
                Image(systemName: "cart")
                
                Text("Enviar pedido")
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
