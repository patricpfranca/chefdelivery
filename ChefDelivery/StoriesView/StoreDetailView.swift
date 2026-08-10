//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 10/08/26.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    
    var body: some View {
        Text(store.name)
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
