//
//  ViewController.swift
//  Express Dictionary iOS
//
//  Created by Cheese & Cupcake on 13/7/2565 BE.
//

import UIKit

class HomeViewController: UIViewController {

	@IBOutlet var searchTextField: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		searchTextField.delegate = self
		searchTextField.placeholder = "Search go here..."
		searchTextField.text = ""
	}

	@IBAction func pressedGoButton(_ sender: UIButton) {
		if !searchTextField.hasText {
			searchTextField.placeholder = "Please insert something";
			return
		}
		print("Butt: \(searchTextField.text!)")
		searchTextField.endEditing(true)
		
		// If found definition, go to result
		// performSegue(withIdentifier: "goToFoundResultView", sender: self)
		
		//performSegue(withIdentifier: "goToNotFoundView", sender: self)
	}
	
}

// MARK: - Home View UITextField Delegate

extension HomeViewController: UITextFieldDelegate {
	
	/**
	 The return state
	 */
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.endEditing(true)
		return true
	}
	
	/**
	 Insert the conditions that this text field should end?
	 */
	func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
		// Text should not be empty
		if textField.hasText {
			return true
		}
		textField.placeholder = "Please insert something"
		return false
	}
	
	/**
	 after ending editing
	 */
	func textFieldDidEndEditing(_ textField: UITextField) {
		// textField.text = ""
		// print(textField.text!)
		textField.placeholder = "Search go here..."
	}
	
	
}

