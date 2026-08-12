//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 06/08/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                NavigationBar()
                    .padding(.horizontal, 15)
                    .padding(.top, 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20) {
                        OrderTypeGridView()
                        CarouselTabView()
                        StoresContainerView()
                    }
                }
            }
        }
        .onAppear {
            fetchData()
        }
    }
    
    func fetchData() {
        guard let url = URL(string: "https://private-b6a535-chefdelivery34.apiary-mock.com/stores") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
            }
            else if let data = data {
                let storesObject = try? JSONDecoder().decode([StoreType].self, from: data)
                print(storesObject)
            }
            
        }.resume()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
}
