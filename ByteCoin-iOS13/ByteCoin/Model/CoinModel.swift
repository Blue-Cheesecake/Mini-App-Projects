//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Cheese & Cupcake on 12/7/2565 BE.
//  Copyright © 2565 BE The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
	let currency: String
	let price: Double
	var priceStringFormated: String {
		// Get only two decimal place
		var roundedPrice = price * 100
		roundedPrice = roundedPrice.rounded()
		roundedPrice /= 100
		return "\(roundedPrice)"
	}
}
