//
//  WeatherModel.swift
//  Clima
//
//  Created by Cheese & Cupcake on 11/7/2565 BE.
//  Copyright © 2565 BE App Brewery. All rights reserved.
//

import Foundation

// Since the WeatherData.swift is for JSON format
// This Model will be actual model that be used in Controller

struct WeatherModel {
	
	let cityName: String
	let weatherDescription: String
	let temperature: Float
	var temperatureStringFormat: String { String(format: "%.1f", temperature) }
	
	/**
	 get condition name which is the name of the Icon
	 source: https://openweathermap.org/weather-conditions
	 */
	var icon: String {
		switch weatherDescription {
			case "Thunderstrom":
				return "cloud.bolt.rain"
			case "Drizzle":
				return "cloud.drizzle"
			case "Rain":
				return "cloud.rain"
			case "Snow":
				return "snowflake"
			case "Clouds":
				return "cloud"
			case "Clear":
				return "sun.max"
			default:
				return "cloud.fog"
		}
	}
	
}
