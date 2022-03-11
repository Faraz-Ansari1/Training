//
//  CalculatorBrain.swift
//  BMI Calculator


import Foundation
import UIKit
struct CalculatorBrain {
    var bmi: BMI? // = 0.0
    
    func getAdvice() -> String {
        return bmi?.advice ?? "NO ADVICE!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func CalculateBMI(height: Float, weight:Float) {
       let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)

        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a friddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }

    }
    
    
}
