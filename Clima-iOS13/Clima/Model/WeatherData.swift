//
//  WeatherData.swift
//  Clima
//
//  Created by Cheese & Cupcake on 11/7/2565 BE.
//  Copyright © 2565 BE App Brewery. All rights reserved.
//

import Foundation


/**
 Main structure for weather JSON data API that exist in provided document
 */
struct WeatherData: Decodable {
	public let name: String
	public let weather: [Weather]
	public let main: Main
}

struct Weather: Decodable {
	let main: String
	let description: String
}

struct Main: Decodable {
	let temp: Float
}
