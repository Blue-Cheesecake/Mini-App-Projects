//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController {
	
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
	@IBOutlet var searchTextField: UITextField!
	
	private var weatherModel: WeatherModel?
	
	var weatherManager = WeatherManager()
	let locationManager = CLLocationManager()
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		locationManager.requestWhenInUseAuthorization()
		locationManager.delegate = self
		locationManager.requestLocation()
		
		
        // Do any additional setup after loading the view.
		weatherManager.weatherDelegate = self
		searchTextField.delegate = self
		
    }
			
	
}

//MARK: - Weather UITextFieldDelegate

extension WeatherViewController: UITextFieldDelegate {
	
	@IBAction func searchPressed(_ sender: UIButton) {
		// searchTextField.text = ""
		searchTextField.placeholder = "Search"
	}
	
	// The functions that we customize (override) for text field after we delegate searchTextField
	func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
		if textField.text == "" {
			textField.placeholder = "Type smthing"
			return false
		} else {
			return true
		}
	}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
			// print(searchTextField.text!)
		searchTextField.endEditing(true)
		return true
	}
	
	func textFieldDidEndEditing(_ textField: UITextField) {
		if let city = textField.text {
			weatherManager.fetchWeatherURI(city)
		}
		
		searchTextField.text = ""
		searchTextField.placeholder = "Search"
	}
	
}

// MARK: - WeatherDelegateProtocols

extension WeatherViewController: WeatherDelegateProtocols {
	
	private func updateUILabel(label: UILabel, text: String) {
		DispatchQueue.main.async {
			label.text = text
		}
	}
	
	private func updateUIImage(img: UIImageView, path: String) {
		DispatchQueue.main.async {
			img.image = UIImage(systemName: path)
		}
	}
	
	func updateUIWeather(city: String, temp: String, systemIcon: String) {
		updateUILabel(label: self.cityLabel, text: city)
		updateUILabel(label: self.temperatureLabel, text: temp)
		updateUIImage(img: self.conditionImageView, path: systemIcon)
		
	}
	
	func didUpdateWeather(with newModel: WeatherModel) {
		self.weatherModel = newModel
		updateUIWeather(city: weatherModel!.cityName, temp: weatherModel!.temperatureStringFormat, systemIcon: weatherModel!.icon)
	}
	
	func didFailUpdateWeather(err: Error) {
		print(err.self)
	}
	
}

// MARK: - Weather Location Manager Delegate

extension WeatherViewController: CLLocationManagerDelegate {
	
	@IBAction func getClimaByLocationPressed(_ sender: UIButton) {
		// when this button is pressed call location manager to request the location again
		// it will trigger didUpdateLocations below
		locationManager.requestLocation()
	}
	
	func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
		print("Got location")
		if let location = locations.last {
			// Once it called, stop update.
			locationManager.stopUpdatingLocation()
			let lati = location.coordinate.latitude
			let long = location.coordinate.longitude
			print("Lat: \(lati) Long: \(long)")
			weatherManager.featchWeatherByLocation(lat: lati, long: long)
		}
	}
	
	func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
		print("Location Error")
		print(error)
	}
	
}
