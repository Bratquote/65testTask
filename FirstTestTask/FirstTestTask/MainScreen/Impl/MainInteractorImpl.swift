//
//  MainInteractorImpl.swift
//  FirstTestTask
//
//  Created by Timur Karimov on 17.09.2020.
//  Copyright © 2020 Timur Karimov. All rights reserved.
//

import UIKit


class MainInteractorImpl: MainInteractor {
    var interactorOutput: MainPresenter!
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    func downloadImage(withURL url: URL, forCell cell: UITableViewCell) {
           getData(from: url) { data, response, error in
               guard let data = data, error == nil else { return }
               DispatchQueue.main.async() {
                (cell as? MainCell)?.initCell(image: UIImage(data: data))
               }
           }
    }
}
