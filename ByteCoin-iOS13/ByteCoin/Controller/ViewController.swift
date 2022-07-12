//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var valueLabel: UILabel!
	@IBOutlet var currencyLabel: UILabel!
	@IBOutlet var currencyPicker: UIPickerView!
	
	var coinManager = CoinManager()
	var coinModel: CoinModel? = nil
	
	override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		self.coinManager.delegate = self
		self.currencyPicker.delegate = self
		self.currencyPicker.dataSource = self
		
		// Default Value on first currency
		coinManager.fetchCoinData(currency: coinManager.currencyArray[0])
    }
	
}

// MARK: - Picker
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
	
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		// There is only 1 column
		return 1
	}
	
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		// The length of array
		return coinManager.currencyArray.count
	}
	
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return coinManager.currencyArray[row]
	}
	
	/**
	 Perform this function after done selecting value currency picker
	 */
	func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		let currency = coinManager.currencyArray[row]
		coinManager.fetchCoinData(currency: currency)

	}
	
}

// MARK: - Coin Delegate
extension ViewController: CoinDelegate {
	
	func didUpdateCoinModel(with newModel: CoinModel) {
		self.coinModel = newModel
		// Update UI
		if let safeCoinModel = self.coinModel {
			Utilities.updateTextLabel(label: self.currencyLabel, with: safeCoinModel.currency)
			Utilities.updateTextLabel(label: self.valueLabel, with: safeCoinModel.priceStringFormated)
		}
		
	}
	
	func didFailUpdateCoinModel(_ err: Error) {
		print("Can't Update")
		print(err.self)
	}
	
	
}

