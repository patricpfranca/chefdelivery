//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 06/08/26.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Spacer()
            Button("R. Vergueiro, 3185") {
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.black)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundStyle(.red)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationBar()
        .padding()
}
