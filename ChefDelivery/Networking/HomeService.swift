//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Patric Pereira on 12/08/26.
//

import Foundation

struct HomeService {
    func fetchData() {
        guard let url = URL(string: "https://private-b6a535-chefdelivery34.apiary-mock.com/stores") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
            }
            else if let data = data {
                let storesObjects = try? JSONDecoder().decode([StoreType].self, from: data)
                print(storesObjects)
            }
            
        }.resume()
    }
}
