//
//  instahubData.swift
//  ExpenseTracker
//
//  Created by Raphael Palacio on 6/23/22.
//

import SwiftUI

struct Post: Codable, Identifiable{
    var id = UUID()
    var title: String
    var body: String
}

class Api{
    func getData(completion: @escaping([Post]) -> ()){
        guard let url =  URL(string: "https://hu3xge7vhjud5ns42q7d2ipxhi0pjszn.lambda-url.us-east-1.on.aws/") else { return }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            
            // Allows us to interact with the app while running the api call
            DispatchQueue.main.async {
                completion(posts)
            }
            
        }
            .resume()
        }
    }

