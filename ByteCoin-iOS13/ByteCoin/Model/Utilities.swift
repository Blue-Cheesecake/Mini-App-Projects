//
//  Utilities.swift
//  ByteCoin
//
//  Created by Cheese & Cupcake on 12/7/2565 BE.
//  Copyright © 2565 BE The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct Utilities {
	public static func updateTextLabel(label: UILabel, with text: String) {
		DispatchQueue.main.async {
			label.text = text
		}
	}
}
