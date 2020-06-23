//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by macbook on 2020-06-22.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    mutating func calculateBMI(height:Float, weight:Float) {
        let bmiValue = weight / (height * height)
        
        
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "you are skinny", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
            
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "you are good", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiValue, advice: "fat", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "idk"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.gray
    }
}
