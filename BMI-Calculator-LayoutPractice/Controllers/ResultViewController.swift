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
        print("ResultViewController: viewDidLoad!")
        
        let label = UILabel()
        label.text = "\(bmiResult.value) - \(bmiResult.classification.advice)"
        label.frame = CGRect(x: 50, y: 50, width: 500, height: 200)
        background.backgroundColor = bmiResult.classification.color
//        view.backgroundColor = bmiResult.classification.color
//        view.addSubview(label)
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
    }
    
}
