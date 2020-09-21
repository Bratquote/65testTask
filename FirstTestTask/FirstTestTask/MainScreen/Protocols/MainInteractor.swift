//
//  MainInteractor.swift
//  FirstTestTask
//
//  Created by Timur Karimov on 17.09.2020.
//  Copyright © 2020 Timur Karimov. All rights reserved.
//

import UIKit

protocol MainInteractor {
    func downloadImage(withURL url: URL, forCell cell: UITableViewCell)
}
