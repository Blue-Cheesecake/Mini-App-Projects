//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
	@IBOutlet var searchTextField: UITextField!
	
	let weatherManager = WeatherManager()
	
	override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		searchTextField.delegate = self
		
    }

	@IBAction func searchPressed(_ sender: UIButton) {
		searchTextField.text = ""
		searchTextField.placeholder = "Search"
	}
	
	// The functions that we customize (override) for text field after we delegate searchTextField
	func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
		if textField.text == "" {
			textField.placeholder = "Type smthing"
			return false
		} else {
			return true
		}
	}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		print(searchTextField.text!)
		searchTextField.endEditing(true)
		return true
	}
	
	func textFieldDidEndEditing(_ textField: UITextField) {
		
		if let city = textField.text {
			let uri = weatherManager.fetchWeatherURI(city)
			weatherManager.performRequest(uriString: uri)
			print(uri)
		}
		
		searchTextField.text = ""
		searchTextField.placeholder = "Search"
	}
	
}

