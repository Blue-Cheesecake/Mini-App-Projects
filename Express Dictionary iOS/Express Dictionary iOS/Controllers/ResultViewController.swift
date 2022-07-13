//
//  ResultViewController.swift
//  Express Dictionary iOS
//
//  Created by Cheese & Cupcake on 13/7/2565 BE.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
	
	// Normally the first of definition and partOfSpeech will always appear, others are hiding
	// If there are more than 1 definition, then appear atmost 3 definitions.
	// The length of these arrays will be 3
	
	@IBOutlet var collections_def: [UILabel]!
	@IBOutlet var collections_partOfSpeech: [UILabel]!
	@IBOutlet var collections_defHead: [UILabel]!
	@IBOutlet var collections_partOfSpeechHead: [UILabel]!
	
	/*
	 The Main view controller should assign this variable in order to appear in result view
	 */
	var passedDefModel: [DictionaryModel]?
	
	/**
	 A number of total definitions should be atleast 1 and atmost 3
	 The value should be passed from Main View Controlller by using prepare segue
	 */
	var totalDefinition: Int = -1
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		if let passedDefModel = passedDefModel {
			for i in 0 ..< totalDefinition {
				DispatchQueue.main.async {
					self.collections_def[i].text = passedDefModel[i].definitionText
					self.collections_partOfSpeech[i].text = passedDefModel[i].partOfSpeech
					
					// Enable Displaying
					self.collections_def[i].isHidden = false
					self.collections_partOfSpeech[i].isHidden = false
					self.collections_defHead[i].isHidden = false
					self.collections_partOfSpeechHead[i].isHidden = false
				}
			}
			
		}
	}
	
}
