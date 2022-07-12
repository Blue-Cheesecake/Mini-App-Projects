//
//  WeatherManager.swift
//  Clima
//
//  Created by Cheese & Cupcake on 10/7/2565 BE.
//  Copyright © 2565 BE App Brewery. All rights reserved.
//

import Foundation
import UIKit

protocol WeatherDelegateProtocols {
	func didUpdateWeather(with newModel: WeatherModel)
	func didFailUpdateWeather(err: Error)
}

struct WeatherManager {
	
	let currentWeatherURI: String = "https://api.openweathermap.org/data/2.5/weather?appid=f8d5f9a319ba9da609d4694a9bc4b36b&units=metric"
	
	var weatherDelegate: WeatherDelegateProtocols?
	
	public func fetchWeatherURI(_ city: String) {
		let city: String = city.lowercased()
		let fullURI: String = "\(currentWeatherURI)&q=\(city)"
		performRequest(uriString: fullURI)
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
					if let weatherModel = parseJSON(with: safeData) {
						// set model of delegate
						weatherDelegate?.didUpdateWeather(with: weatherModel)
						print("Model updated")
					}
				}
			}
			
			// Start a task
			task.resume()
		}
		
	}
	
	private func parseJSON(with weatherData: Data) -> WeatherModel? {
		let decoder = JSONDecoder()
		do {
			let weatherJSON = try decoder.decode(WeatherData.self, from: weatherData)
			let weatherModel = WeatherModel(cityName: weatherJSON.name, weatherDescription: weatherJSON.weather[0].main, temperature: weatherJSON.main.temp)
			return weatherModel
		} catch {
			print(Error.self)
		}
		return nil
	}
		
}
