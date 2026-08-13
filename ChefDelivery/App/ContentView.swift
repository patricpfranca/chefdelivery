//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 06/08/26.
//

import SwiftUI

struct ContentView: View {
    
    private var service = HomeService()
    @State private var storesType: [StoreType] = []
    
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
            Task {
                await getStores()
            }
        }
    }
    
    func getStores() async {
        do {
            let result = try await service.fetchData()
            switch result {
            case .success(let stores):
                self.storesType = stores
            case .failure(let error):
                print(error.localizedDescription)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
}
