//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Cheese & Cupcake on 6/7/2565 BE.
//  Copyright © 2565 BE The App Brewery. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
	
	public var billObject: Bill?
	@IBOutlet private var totalPerPersonLabel: UILabel!
	@IBOutlet private var descriptionLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		//
		if let billObject = billObject {
			Utilities.changeTextLabel(with: billObject.getTipOfEachFormattedString(), of: totalPerPersonLabel)
			Utilities.changeTextLabel(with: billObject.getDescription(), of: descriptionLabel)
		}
	}
	
	
	@IBAction func recalculatePressed(_ sender: UIButton) {
		self.dismiss(animated: true)
	}
	
}
