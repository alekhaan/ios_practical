//
//  BeerService.swift
//  ios_practical
//
//  Created by AlexGod on 30.10.2023.
//

import Foundation

final class BeerService {
    
    let decoder = JSONDecoder()
    let session: URLSession = {
        let sessionConfiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfiguration)
        return session
    }()
    
    func fetchBeer(comletionHandler: @escaping ([BeerDTO]) -> Void) {
        let url: URL = URL(string: "https://api.punkapi.com/v2/beers")!
        session.dataTask(with: url, completionHandler: { data, response, error in
            guard
                let data,
                error == nil
            else { return }
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let beerData = try! decoder.decode([BeerDTO].self, from: data)
            comletionHandler(beerData)
        }).resume()
    }
    
}
