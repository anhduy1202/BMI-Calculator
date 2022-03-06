//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by csuftitan on 3/6/22.

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        //go back to previous screen
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!

   
    


}
