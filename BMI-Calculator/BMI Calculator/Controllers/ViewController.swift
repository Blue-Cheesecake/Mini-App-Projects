//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var heightLabel: UILabel!
	@IBOutlet weak var heightSlider: UISlider!
	@IBOutlet weak var weightLabel: UILabel!
	@IBOutlet weak var weightSlider: UISlider!
	var bmi: Float = 0
	
	override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		heightLabel.text = String(heightSlider.maximumValue / 2.0) + "m"
		heightSlider.value = heightSlider.maximumValue / 2.0
		weightLabel.text = String(Int(weightSlider.maximumValue) / 2) + "Kg"
		weightSlider.value = weightSlider.maximumValue / 2
    }

	@IBAction func heightSliderChanged(_ sender: UISlider) {
		let roundedValue: Float = roundf(sender.value * 100) / 100.0
		heightLabel.text = String(roundedValue) + "m"
	}
	
	@IBAction func weightSliderChanged(_ sender: UISlider) {
		weightLabel.text = String(Int(sender.value)) + "Kg"
	}
	@IBAction func calculatePressed(_ sender: UIButton) {
		let heightVal: Float = heightSlider.value
		let weightVal: Float = weightSlider.value
		bmi = weightVal / powf(heightVal, 2)
		
		self.performSegue(withIdentifier: "goToResult", sender: self)
	}
	
	/**
	 The function that will perform before if we trigger segue.
	 */
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// IF there are many segue, there will be many of identifier. Split it down to another case
		if segue.identifier == "goToResult" {
			// Since The segue.destination is UIViewController
			// We need to cast it down to specific controller
			let resultVC: ResultViewController = segue.destination as! ResultViewController
			resultVC.bmiValue = bmi
		}
	}
}

