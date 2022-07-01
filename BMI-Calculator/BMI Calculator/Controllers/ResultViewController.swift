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
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		bmiLabel.text = String(format: "%.1f", bmiValue)
		
	}
	
	
}
