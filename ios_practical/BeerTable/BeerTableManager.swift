//
//  BeerTableManager.swift
//  ios_practical
//
//  Created by AlexGod on 30.10.2023.
//

import UIKit

final class BeerTableManager: NSObject {
    var tableData: [BeerDTO] = []
}

//MARK: - UITableViewdataSource

extension BeerTableManager: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let beer = tableData[indexPath.row]
        var cell = UITableViewCell()
        var configuration = cell.defaultContentConfiguration()
        configuration.image = UIImage()
        configuration.text = beer.name
        configuration.secondaryText = beer.tagline
        cell.contentConfiguration = configuration
        return cell
    }
    
}
