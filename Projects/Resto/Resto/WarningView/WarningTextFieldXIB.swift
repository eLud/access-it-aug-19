//
//  WarningTextFieldXIB.swift
//  Resto
//
//  Created by Ludovic on 27/08/2019.
//  Copyright © 2019 Ludovic. All rights reserved.
//

import UIKit

class WarningTextFieldXIB: UIView {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    var searchString = "@"
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
//        let nib = UINib(nibName: "WarningTextField", bundle: nil)
//        nib.instantiate(withOwner: self, options: nil)
    }
    
    @IBAction func checkText(_ sender: UITextField) {
        if sender.text!.contains(searchString) {
            label.isHidden = true
        } else {
            label.isHidden = false
        }
    }
}
