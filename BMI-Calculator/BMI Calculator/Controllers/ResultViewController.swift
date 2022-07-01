//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Cheese & Cupcake on 1/7/2565 BE.
//  Copyright © 2565 BE Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
	
	@IBOutlet weak var bmiLabel: UILabel!
	@IBOutlet weak var suggestionText: UILabel!
	var bmiValue: Float = 0
	var calUtils = CalculatorBrain.self
	
	override func viewDidLoad() {
		super.viewDidLoad()
		bmiLabel.text = calUtils.getBMIFormat(bmiValue)
	}
	
	
	@IBAction func reCalculatePressed(_ sender: UIButton) {
		self.dismiss(animated: true)
	}
	
	
}
