//
//  BMI.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by William Da Silva on 27/01/2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let classification: BMIClassification
}

struct BMIClassification {
    let inRangeCheck: (Float) -> Bool
    let advice: String
    let color: UIColor
}
