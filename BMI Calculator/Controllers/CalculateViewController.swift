//
//  ViewController.swift
//  BMI Calculator
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var heightValue: UISlider!
  
    @IBOutlet weak var weightValue: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBAction func heightChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }

    @IBAction func weightChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightValue.value
        let weight = weightValue.value
        calculatorBrain.calculateBMI(weight: weight, height: height)
        
        //go to result screen
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    //Stuffs to calculate before going to result screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}
