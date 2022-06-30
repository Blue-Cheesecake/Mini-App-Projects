//
//  ViewController.swift
//  Article Preview Component
//
//  Created by Cheese & Cupcake on 29/6/2565 BE.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var profileStack: UIStackView!
	@IBOutlet weak var shareStack: UIStackView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		shareStack.isHidden = true
	}

	@IBAction func pressedShareButton(_ sender: UIButton) {
		
		// swap displaying between profile and share
		if profileStack.isHidden {
			profileStack.isHidden = false
			shareStack.isHidden = true
		} else {
			profileStack.isHidden = true
			shareStack.isHidden = false
		}
		
	}
	
}

