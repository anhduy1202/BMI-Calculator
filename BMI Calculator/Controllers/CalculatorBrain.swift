//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by csuftitan on 3/6/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

//Struct to handle calculation
struct CalculatorBrain {
    var bmiValue: BMI?
    var advice: BMI?
    var color: BMI?
    mutating func calculateBMI(weight:Float, height:Float) {
       let bmi = weight / (height*height)
        switch bmi {
        case 0..<18.5:
            bmiValue = BMI(value: bmi, advice: "Eat more pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        case 18.5...24.9:
            bmiValue = BMI(value: bmi, advice: "You're fit", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        default:
            bmiValue = BMI(value: bmi, advice: "Eat less pie", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiValue?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmiValue?.advice ?? ""
    }
    func getColor() -> UIColor {
        return bmiValue?.color ?? UIColor.white
    }
}
