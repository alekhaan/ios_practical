//
//  ViewController.swift
//  ios_practical
//
//  Created by AlexGod on 02.10.2023.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        
        let url : URL = URL(string: "https://api.punkapi.com/v2/beers")!
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard 
                let data,
                error == nil
            else { return }
//            let decoder = JSONDecoder()
            let str = String(data: data, encoding: .utf8)
            print(str ?? "")
        }).resume()
        
    }

}

//class Networking {
//    
//    let session: URLSession = .shared
//    
//    func performRequest(url: URL) {
//        session.dataTask(with: url) { data, response, error in
//
//        }
//    }
//    
//}
