//
//  ViewController.swift
//  Express Dictionary iOS
//
//  Created by Cheese & Cupcake on 13/7/2565 BE.
//

import UIKit

class HomeViewController: UIViewController {

	@IBOutlet var searchTextField: UITextField!
	var dictionaryManager = DictionaryManager()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		dictionaryManager.delegate = self
		
		// Do any additional setup after loading the view.
		searchTextField.delegate = self
		searchTextField.placeholder = "Search go here..."
		searchTextField.text = ""
	}
	
	var finalDictionaryModels: [DictionaryModel]?

	@IBAction func pressedGoButton(_ sender: UIButton) {
		if !searchTextField.hasText {
			searchTextField.placeholder = "Please insert something";
			return
		}
		print("Butt: \(searchTextField.text!)")
		searchTextField.endEditing(true)
		
		// A code for fetching Data from API
		dictionaryManager.fetchDataMeaning(word: searchTextField.text!)
		
		//performSegue(withIdentifier: "goToNotFoundView", sender: self)
	}
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "goToFoundResultView" {
			let resultVC = segue.destination as! ResultViewController
			
			if let finalDictionaryModels = finalDictionaryModels {
				resultVC.passedDefModel = finalDictionaryModels
				resultVC.totalDefinition = finalDictionaryModels.count
			}
			
			
			
		} else if segue.identifier == "goToNotFoundView" {
			let notFoundVC = segue.destination as! NotFoundViewController
			// <#code#>
			
			
		}
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
		
		// Codes for performing fetching Data API
		// <#code#>
		// performSegue(withIdentifier: "goToFoundResultView", sender: self)
		// performSegue(withIdentifier: "goToNotFoundView", sender: self)
	}
	
	
}

extension HomeViewController: DictionaryManagerDelegate {
	
	func didGetDictCollection(_ newCollection: [DictionaryModel]) {
		self.finalDictionaryModels = newCollection
		// print(self.finalDictionaryModels!)
		
		// If found definition, go to result
		DispatchQueue.main.async {
			self.performSegue(withIdentifier: "goToFoundResultView", sender: self)
		}
	}
	
	func didFailUpdateDicUpdate(_ err: Error?) {
		if let err = err {
			print(err)
			print("Failed to update")
			return
		}
		print("Why code is go here? Since error that pass in here should not be nil")
		
	}
	
	
}
