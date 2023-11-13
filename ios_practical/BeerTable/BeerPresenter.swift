//
//  BeerPresenter.swift
//  ios_practical
//
//  Created by AlexGod on 10.11.2023.
//

import Foundation

struct BeerViewModel {
    let id: Int
    let name: String
    let tagline: String
    let imageUrl: URL
}

final class BeerPresenter {

    private let model: BeerViewModel
    
    init(model: BeerViewModel) {
        self.model = model
    }

    func loadBeersFor(beers: [BeerDTO]) {
        
    }
    
}
