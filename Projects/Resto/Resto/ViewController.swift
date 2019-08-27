//
//  ViewController.swift
//  Resto
//
//  Created by Ludovic on 27/08/2019.
//  Copyright © 2019 Ludovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var adressTextField: UITextField!
    @IBOutlet weak var styleSegmentedControl: UISegmentedControl!
    @IBOutlet weak var visitedSwitch: UISwitch!
    @IBOutlet weak var reviewSlider: UISlider!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var commentTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
          
        configureSegmentedControl()
        
        // Error management example
        do {
              try failingFunction()
          } catch {
              print(error)
          }
        
        // Error as optional
        try? failingFunction()
    }

    @IBAction func visitedSwitchDidChange(_ sender: UISwitch) {
        if sender.isOn {
            reviewSlider.isEnabled = true
            commentTextField.isEnabled = true
        } else {
            reviewSlider.isEnabled = false
            commentTextField.isEnabled = false
        }
    }
    
    @IBAction func sliderValueDidChange(_ sender: UISlider) {
        reviewLabel.text = "\(Int(reviewSlider.value))"
    }
    
    @IBAction func save(_ sender: Any) {
        saveRestaurant()
    }
    
    private func configureSegmentedControl() {
        styleSegmentedControl.removeAllSegments()
        Style.allCases.forEach { (style) in
            styleSegmentedControl.insertSegment(withTitle: style.rawValue, at: styleSegmentedControl.numberOfSegments, animated: false)
        }
        styleSegmentedControl.selectedSegmentIndex = 0
    }
    
    private func saveRestaurant() {

        guard let name = nameTextField.text, !name.isEmpty else { return }
        guard let address = adressTextField.text, !address.isEmpty else { return }
        guard let style = Style(intValue: styleSegmentedControl.selectedSegmentIndex) else { return }
        guard let comment = commentTextField.text else { return }

        let newResto = Restaurant(name: name, adress: address, style: style, review: visitedSwitch.isOn ? Int(reviewSlider.value) : nil, comment: comment, isVisited: visitedSwitch.isOn)
        Directory.instance.add(newResto)
    }
    
    private func failingFunction() throws {
        throw FormError.outOfRange
    }
    
}

