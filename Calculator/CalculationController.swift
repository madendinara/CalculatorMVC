//
//  CalculationController.swift
//  Calculator
//
//  Created by Dinara on 10/1/19.
//  Copyright © 2019 Dinara Sadykova. All rights reserved.
//

import Foundation
class CalculationController{
    var mathSign = false
    var firstNumber: Double? = nil
    var secondNumber: Double? = nil
    var modifier: Int? = nil
    
    func displayDigits(buttonText: Int, displayText: String)->String{
        
        
        if !mathSign {
            mathSign = true
            return String(buttonText)
        }
        return displayText + String(buttonText)
       
        
    }
    func calculateAction(buttonText: Int, displayText: String) -> String {
        if buttonText == 16 {
            
            var result: Double = 0.0
            if mathSign {
                secondNumber = Double(displayText)
            } else {
                secondNumber = firstNumber
            }
            
            result = calculate()
            
            secondNumber = nil
            if mathSign {
                secondNumber = firstNumber
            }
            firstNumber = result
            mathSign = false
            
            return String(result)
        }else if buttonText == 10{
            print("Clear")
            firstNumber = nil
            secondNumber = nil
        }
        else {
            mathSign = false
            firstNumber = Double(displayText)!
            modifier = buttonText
        }
        return displayText
    }
    
    private func calculate() -> Double {
        
        switch modifier {
        case 14:
            return firstNumber! * secondNumber!
        case 13:
            return firstNumber! / secondNumber!
        case 11:
            return firstNumber!/100
        case 12:
            return firstNumber! - secondNumber!
        default: return 0
        }
    }
    
    func clear() {
        secondNumber = nil
        
    }
   
}
