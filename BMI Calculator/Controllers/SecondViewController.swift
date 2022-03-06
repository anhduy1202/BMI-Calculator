//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by csuftitan on 3/5/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//
import UIKit
import Foundation
class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
        
    }
}
