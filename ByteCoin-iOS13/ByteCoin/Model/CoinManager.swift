//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinDelegate {
	func didUpdateCoinModel(with newModel: CoinModel);
	func didFailUpdateCoinModel(_ err: Error);
}

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC/"
    let apiKey = "18560241-412B-4D9E-9D4B-63DDA5A67F6A"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

	var delegate: CoinDelegate?
	
	func parseJSON(with coinData: Data) -> CoinModel? {
		let jsonDecoder = JSONDecoder()
		do {
			let coinJson = try jsonDecoder.decode(CoinJSON.self, from: coinData)
			print("Successfully Parse JSON")
			let coinModel = CoinModel(currency: coinJson.asset_id_quote, price: coinJson.rate)
			return coinModel
		} catch {
			print("Error on ParseJSON")
			print(Error.self)
		}
		return nil
	}
	
	public func fetchCoinData(currency: String) {
		if !currencyArray.contains(currency) {
			print("\(currency) should exist in array")
			return
		}
		let fullURL: String = "\(baseURL)\(currency)?apikey=\(apiKey)"
		performRequest(url: fullURL)
	}
	
	public func performRequest(url: String) {
		
		if let URL = URL(string: url) {
			
			let session = URLSession(configuration: .default)
			let task = session.dataTask(with: URL) { data, res, err in
				if let err = err {
					delegate?.didFailUpdateCoinModel(err)
					return
				}
				
				if let safeData = data {
					if let coinModel = parseJSON(with: safeData) {
						delegate?.didUpdateCoinModel(with: coinModel)
					}
				}
			}
			task.resume()
		}
		
	}
	
    
}
