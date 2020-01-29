//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var heightProgressLabel: UILabel!
    @IBOutlet weak var weightProgressLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    private let calculator = Calculator()
    
    @IBAction func heightProgressChanged(_ sender: UISlider) {
        heightProgressLabel.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func weightProgressChanged(_ sender: UISlider) {
        weightProgressLabel.text = String(format: "%.0fKg", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bmi = calculator.calculate(height: heightSlider.value, weight: weightSlider.value.rounded())
        performSegue(withIdentifier: "goToResult", sender: bmi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            (segue.destination as! ResultViewController).bmiResult = sender as? BMI
        }
    }
    
}

