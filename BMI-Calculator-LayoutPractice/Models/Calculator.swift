//
//  Calculator.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by William Da Silva on 27/01/2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct Calculator {
    
    private let bmiClassifications = [
        BMIClassification(inRangeCheck: {value in (..<18.5).contains(value)}, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)),
        BMIClassification(inRangeCheck: {value in (18.5..<24.9).contains(value)}, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)),
        BMIClassification(inRangeCheck: {value in (24.9...).contains(value)}, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
    ]
    
    func calculate(height: Float, weight: Float) -> BMI {
        let bmiValue = weight / (height * height)
        let bmiClassification = bmiClassifications.first { (bmiClassification) -> Bool in
            bmiClassification.inRangeCheck(bmiValue)
        }
        return BMI(value: bmiValue, classification: bmiClassification!)
    }
    
}
