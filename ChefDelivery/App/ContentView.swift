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
            VStack {
                OrderTypeGridView()
            }
        }
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
}
