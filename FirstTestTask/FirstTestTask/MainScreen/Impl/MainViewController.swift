//
//  MainViewController.swift
//  FirstTestTask
//
//  Created by Timur Karimov on 17.09.2020.
//  Copyright © 2020 Timur Karimov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MainView {
    
    @IBOutlet weak var tableView: UITableView!
    
    var count: Int = 100
    var presenter: MainPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}


extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell") as! MainCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        presenter.downloadImage(to: cell, index: indexPath.row + 1)
    }
    
}
