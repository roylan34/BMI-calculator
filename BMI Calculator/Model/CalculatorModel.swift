//
//  CalculatorModel.swift
//  BMI Calculator
//
//  Created by Vananaz Developer on 8/30/20.
//  Copyright © 2020 Roe Developer. All rights reserved.
//

import Foundation

struct CalculatorModel{
    
    private var bmi: BMI?

    mutating func calculateBmi(height: Float, weight: Float) -> Void{
        //formula: weight / height (m2)
        let bmi = weight / pow(height, 2); //same as: (height * height)
        
        self.bmi = BMI(value: bmi);
        
    }
    
    func getBmi() -> String{
         let resBmiValue = String(format: "%.1f", self.bmi?.value ?? "0.0")
        return resBmiValue;
    }
}
