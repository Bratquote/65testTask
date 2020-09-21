//
//  MainAssembler.swift
//  FirstTestTask
//
//  Created by Timur Karimov on 17.09.2020.
//  Copyright © 2020 Timur Karimov. All rights reserved.
//

import UIKit

class MainAssembler {
    
    func assemble() -> MainViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let presenter: MainPresenter = MainPresenterImpl(view: viewController)
        viewController.presenter = presenter
        
        
        return viewController
    }
}
