//
//  WeatherData.swift
//  Clima
//
//  Created by Cheese & Cupcake on 11/7/2565 BE.
//  Copyright © 2565 BE App Brewery. All rights reserved.
//

import Foundation

struct Weather: Decodable {
	let description: String
}

struct WeatherData: Decodable {
	let name: String
	let weather: [Weather]
}

