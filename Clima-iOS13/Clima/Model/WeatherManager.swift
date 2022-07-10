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
			let task = session.dataTask(with: url, completionHandler: sesstionCompleterHandler(data:res:err:))
			
			// Start a task
			task.resume()
		}
		
	}
	
	private func sesstionCompleterHandler(data: Data?, res: URLResponse?, err: Error?) {
		if let err = err {
			print(err)
			return
		}
		
		if let safeData = data {
			let dataString = String(data: safeData, encoding: .utf8)
			print(dataString!)
		}
		
	}
	
}
