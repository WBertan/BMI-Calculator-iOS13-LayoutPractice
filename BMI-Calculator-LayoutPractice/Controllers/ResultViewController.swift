//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by William Da Silva on 27/01/2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultAdvice: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    var bmiResult: BMI!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = String(format: "%.1f", bmiResult.value)
        resultAdvice.text = "\(bmiResult.classification.advice)"
        background.backgroundColor = bmiResult.classification.color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
