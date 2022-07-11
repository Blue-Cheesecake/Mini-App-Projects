//
//  WeatherManager.swift
//  Clima
//
//  Created by Cheese & Cupcake on 10/7/2565 BE.
//  Copyright © 2565 BE App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
	
	let currentWeatherURI: String = "https://api.openweathermap.org/data/2.5/weather?appid=f8d5f9a319ba9da609d4694a9bc4b36b&units=metric"
	
	public func fetchWeatherURI(_ city: String) -> String {
		let city: String = city.lowercased()
		let fullURI: String = "\(currentWeatherURI)&q=\(city)"
		return fullURI
	}
	
	public func performRequest(uriString: String) {
		
		// Create URL
		if let url = URL(string: uriString) {
			
			// Create Session
			let session = URLSession(configuration: .default)
			
			// Give a task
			let task = session.dataTask(with: url) { result, res, err in
				if let err = err {
					print(err)
					return
				}
				
				if let safeData = result {
					
					let weatherJSON = parseJSON(with: safeData)
					print("Decoded")
					print(weatherJSON!.name)
					print(weatherJSON!.weather[0].description)
				}
			}
			
			// Start a task
			task.resume()
		}
		
	}
	
	private func parseJSON(with weatherData: Data) -> WeatherData? {
		let decoder = JSONDecoder()
		do {
			let weatherJSON = try decoder.decode(WeatherData.self, from: weatherData)
			return weatherJSON
		} catch {
			print(Error.self)
		}
		return nil
	}
		
}
