//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
		let title = K.appName
		var charIndex = 0.0
		titleLabel.text = ""
		for char in title {
			DispatchQueue.main.asyncAfter(deadline: .now() + 0.1 * charIndex, execute: {
				self.titleLabel.text! += String(char)
			})
//			Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false, block: {
//				timer in
//				self.titleLabel.text?.append(char)
//			})
			charIndex += 1
		}
       
		
    }
    

}
