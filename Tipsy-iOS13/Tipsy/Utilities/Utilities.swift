//
//  Utilities.swift
//  Tipsy
//
//  Created by Cheese & Cupcake on 6/7/2565 BE.
//  Copyright © 2565 BE The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct Utilities {
	 
	public static func changeTextLabel(with s: String, of label: UILabel) {
		label.text = s
	}
	
	public static func isThereOnlyNumber(of str: String) -> Bool {
		var isAllNumeric: Bool = true
		for char in str {
			if char.isASCII && !char.isNumber && char != "." {
				isAllNumeric = false
				break
			}
		}
		return isAllNumeric
	}
	
	public static func isLastStringDot(of str: String) -> Bool {
		if str.isEmpty {
			return false
		}
		let end = str.index(str.startIndex, offsetBy: str.count - 1)
		return str[end] == "."
	}
	
}
