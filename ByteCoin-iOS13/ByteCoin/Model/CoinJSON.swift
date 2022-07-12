//
//  CoinJSON.swift
//  ByteCoin
//
//  Created by Cheese & Cupcake on 12/7/2565 BE.
//  Copyright © 2565 BE The App Brewery. All rights reserved.
//

import Foundation

struct CoinJSON: Decodable {
	let asset_id_base: String
	let asset_id_quote: String
	let rate: Double
}
