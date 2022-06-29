//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
	var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		// set to the first story
		changeLabel(to: storyBrain.getCurrTitle(), of: storyLabel)
		changeButtonTitle(to: storyBrain.getCurrChoice1Text(), of: choice1Button)
		changeButtonTitle(to: storyBrain.getCurrChoice2Text(), of: choice2Button)
    }
	
	private func changeLabel(to newLabel: String, of labelObj: UILabel) {
		labelObj.text = newLabel
	}
	
	private func changeButtonTitle(to newLabel: String, of labelObj: UIButton) {
		labelObj.setTitle(newLabel, for: UIControl.State.normal)
	}
	
	private func disableButton(_ buttons: UIButton...) {
		for eachButt in buttons {
			eachButt.isEnabled = false
		}
	}
	
	private func enableButton(_ buttons: UIButton...) {
		for eachButt in buttons {
			eachButt.isEnabled = true
		}
	}
	
	@IBAction func answerIsPressed(_ sender: UIButton) {
		if storyBrain.reachEndOfStory {
			return
		}
		
		let choiceText: String = sender.currentTitle!
		storyBrain.goToNextStory(with_choice: choiceText)
		
		
		
		changeLabel(to: storyBrain.getCurrTitle(), of: storyLabel)
		changeButtonTitle(to: storyBrain.getCurrChoice1Text(), of: choice1Button)
		changeButtonTitle(to: storyBrain.getCurrChoice2Text(), of: choice2Button)
		
		if storyBrain.reachEndOfStory {
			disableButton(choice1Button, choice2Button)
			return
		}
	}
	
}

