//
//  MainViewController.swift
//  FirstTestTask
//
//  Created by Timur Karimov on 17.09.2020.
//  Copyright © 2020 Timur Karimov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MainView {
    
    @IBOutlet weak var loginTF: UITextField!
    var presenter: MainPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        navigationController?.navigationBar.prefersLargeTitles = true

    }
    
    func showAlert(title: String, value: String) {
        let alert = UIAlertController(title: title, message: value, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ок", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func checkButtonTapped(_ sender: Any) {
        presenter.checkTextValid(loginTF.text!)
    }
    
}


