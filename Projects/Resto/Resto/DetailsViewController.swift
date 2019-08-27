//
//  DetailsViewController.swift
//  Resto
//
//  Created by Ludovic on 27/08/2019.
//  Copyright © 2019 Ludovic. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var restaurantToDisplay: Restaurant?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let resto = restaurantToDisplay else { fatalError("No restaurant provided") }
        titleLabel.text = resto.name
    }
    
}
