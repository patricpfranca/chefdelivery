//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 09/08/26.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    @State private var ratingFilter = 0
    @State private var minDistanceFilter: Double = 0
    @State private var maxDistanceFilter: Double = 100
    
    var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter && (store.distance >= minDistanceFilter && store.distance < maxDistanceFilter)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.headline)
                
                Spacer()
                
                Menu("Estrelas") {
                    
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()


                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            let textStarPlural = rating > 1 ? "estrelas" : "estrela"
                            Text("\(rating) \(textStarPlural) ou mais")
                        }

                    }
                    
                }
                .foregroundStyle(.black)
                
                Menu("Distância") {
                    
                    Button {
                        minDistanceFilter = 0
                        maxDistanceFilter = 100
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()

                    ForEach(Array(stride(from: 0, through: 20, by: 5)), id:\.self) { distance in
                        Button {
                            minDistanceFilter = Double(distance)
                            maxDistanceFilter = Double(distance + 5)
                        } label: {
                            Text("De \(distance) até \(distance + 5) km")
                        }
                    }
                }
                .foregroundStyle(.black)
            }
            
            
            VStack(alignment: .leading, spacing: 30) {
                
                if filteredStores.isEmpty {
                    Text("Nenhum resultado encontrado")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                } else {
                    ForEach(filteredStores) { mock in
                        NavigationLink {
                            StoreDetailView()
                                .environmentObject(mock)
                        } label: {
                            StoreItemView(store: mock)
                        }
                    }
                }
            }
            .foregroundStyle(.black)
        }
        .padding(20)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoresContainerView()
}
