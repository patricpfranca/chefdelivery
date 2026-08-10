//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 09/08/26.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
        }
    }
}

#Preview {
    StoresContainerView()
}
