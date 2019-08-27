//
//  WarningTextField.swift
//  Resto
//
//  Created by Ludovic on 27/08/2019.
//  Copyright © 2019 Ludovic. All rights reserved.
//

import UIKit

class WarningTextField: UIView {
    
    var textField: UITextField = UITextField()
    private var label: UILabel = UILabel()
    var searchString = "@"

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        
        addSubview(textField)
        addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        
        textField.addTarget(self, action: #selector(checkText), for: .editingChanged)
        
        label.text = "Error in textfield"
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)

        textField.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        textField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        textField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        textField.bottomAnchor.constraint(equalTo: label.topAnchor, constant: 4).isActive = true
        label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 8).isActive = true
    }
    
    @objc func checkText() {
        if textField.text!.contains(searchString) {
            label.isHidden = true
        } else {
            label.isHidden = false
        }
    }

}
