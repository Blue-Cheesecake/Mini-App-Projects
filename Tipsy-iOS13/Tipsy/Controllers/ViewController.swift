//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var totalInput: UITextField!
	@IBOutlet var splitNumber: UILabel!
	@IBOutlet var zeroTipButton: UIButton!
	@IBOutlet var tenTipButton: UIButton!
	@IBOutlet var twentyButton: UIButton!
	var currentTip: Int?
	
	override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		Utilities.deSelectButtons(zeroTipButton, tenTipButton, twentyButton)
		currentTip = nil
    }

	@IBAction func selectedTip(_ sender: UIButton) {
		// change the selected property to true of sender object
		// if it's already selected, change it to deselect
		// otherwise, deslect others and select one
		
		if sender.isSelected {
			Utilities.deSelectButtons(zeroTipButton, tenTipButton, twentyButton)
			currentTip = nil
			return
		}
		
		Utilities.deSelectButtons(zeroTipButton, tenTipButton, twentyButton)
		if sender.currentTitle! == "0%" {
			Utilities.selectButtons(zeroTipButton)
			currentTip = 0
		}
		if sender.currentTitle! == "10%" {
			Utilities.selectButtons(tenTipButton)
			currentTip = 10
		}
		if sender.currentTitle! == "20%" {
			Utilities.selectButtons(twentyButton)
			currentTip = 20
		}
	}
	
	@IBAction func pressedSplitStepper(_ sender: UIStepper) {
		Utilities.changeTextLabel(with: String(Int(sender.value)), of: splitNumber)
	}
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "goResultViewSegue" {
			// Passing variabla to result view controller
			let resultVC: UIViewController = segue.destination as! ResultViewController
			//
			
		}
	}
	
	@IBAction func isCalculatePressed(_ sender: UIButton) {
		// Base cases
		if totalInput.text!.isEmpty {
			print("Failed: Text is Empty")
			return
		}
		
		if !Utilities.isThereOnlyNumber(of: totalInput.text!) {
			print("Failed: Text should include only Numeric")
			return
		}
		
		if Utilities.isLastStringDot(of: totalInput.text!) {
			print("Failed: The last character is dot")
			return
		}
		print("Total \(totalInput.text!)")
		
		// Send to another view by sugin segue.
		self.performSegue(withIdentifier: "goResultViewSegue", sender: self)
	}
}

