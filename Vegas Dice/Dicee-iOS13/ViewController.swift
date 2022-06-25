//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet var diceImageOne: UIImageView!
	@IBOutlet var diceImageTwo: UIImageView!
	
	let dicesLiteralResourceName: [String] = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		diceImageOne.image = UIImage(imageLiteralResourceName: "DiceOne")
		
		diceImageOne.alpha = CGFloat(0.5)
		
		diceImageTwo.image = UIImage(imageLiteralResourceName: "DiceOne")
		diceImageTwo.alpha = CGFloat(0.5)
	}
	
	@IBAction func rollButtonIsPressed(_ sender: UIButton) {
		diceImageOne.alpha = CGFloat(1)
		diceImageTwo.alpha = CGFloat(1)
		
		let diceIndex1 = Int.random(in: 0...5)
		let diceIndex2 = Int.random(in: 0...5)
		
		diceImageOne.image = UIImage(imageLiteralResourceName: dicesLiteralResourceName[diceIndex1])
		diceImageTwo.image = UIImage(imageLiteralResourceName: dicesLiteralResourceName[diceIndex2])
	}
}
