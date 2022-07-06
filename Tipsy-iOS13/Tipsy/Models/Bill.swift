//
//  Bill.swift
//  Tipsy
//
//  Created by Cheese & Cupcake on 6/7/2565 BE.
//  Copyright © 2565 BE The App Brewery. All rights reserved.
//

import Foundation

struct Bill {
	
	let total: Float?
	let tipPercentage: Int?
	let split: Int?
	
	private func getTipOfEach() -> Float {
		if let total = total, let tipPercentage = tipPercentage, let split = split {
			return (total * (Float(tipPercentage) / 100.0)) / Float(split)
		}
		print("Some of attributes are nil")
		return 0
	}
	
	func getTipOfEachFormattedString() -> String {
		return String(format: "%.2f", getTipOfEach())
	}
	
	func getDescription() -> String {
		return "Split between \(split ?? 2) people, with \(tipPercentage ?? 0)% tip."
	}
}
