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
	
	override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		Utilities.deSelectButtons(zeroTipButton, tenTipButton, twentyButton)
    }

	@IBAction func pressedSplitStepper(_ sender: UIStepper) {
		Utilities.changeTextLabel(with: String(Int(sender.value)), of: splitNumber)
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
	}
}

