//
//  BeerTableViewControllerFactory.swift
//  ios_practical
//
//  Created by AlexGod on 30.10.2023.
//

final class BeerTableViewControllerFactory {
    
    func build() -> BeerTableViewController {
        let service = BeerService()
        let viewController = BeerTableViewController(service: service)
        return viewController
    }
    
}
