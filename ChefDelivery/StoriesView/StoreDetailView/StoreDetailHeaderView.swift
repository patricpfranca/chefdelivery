//
//  StoreDetailHeaderView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 11/08/26.
//

import SwiftUI

struct StoreDetailHeaderView: View {
    
    let store: StoreType
    
    var body: some View {
        VStack {
            Image(store.headerImage)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(store.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(store.logoImage)
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            
            HStack(spacing: 8) {
                Text(store.location)
                
                Spacer()
                
                ForEach(1...store.stars, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                        .font(.caption)
                }
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
        }
    }
}

#Preview {
    StoreDetailHeaderView(store: storesMock[0])
}
