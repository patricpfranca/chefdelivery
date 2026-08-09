//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 06/08/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationBar()
            .padding(.horizontal, 15)
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                OrderTypeGridView()
                CarouselTabView()
            }
        }
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
}
