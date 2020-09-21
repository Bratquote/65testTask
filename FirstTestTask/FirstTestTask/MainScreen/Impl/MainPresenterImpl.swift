//
//  MainPresenterImpl.swift
//  FirstTestTask
//
//  Created by Timur Karimov on 17.09.2020.
//  Copyright © 2020 Timur Karimov. All rights reserved.
//

import UIKit


class MainPresenterImpl: MainPresenter {
    
    var interactor: MainInteractor
    var view: MainView
    
    init(interactor: MainInteractor, view: MainView) {
        self.interactor = interactor
        self.view = view
    }
    
    
    func downloadImage(to cell: UITableViewCell, index: Int) {
        guard let url = URL(string: "https://placehold.it/375x150?text=\(index)") else {return}
        
        DispatchQueue.global(qos: .default).async {
            self.interactor.downloadImage(withURL: url, forCell: cell)
        }
        
    }
}
