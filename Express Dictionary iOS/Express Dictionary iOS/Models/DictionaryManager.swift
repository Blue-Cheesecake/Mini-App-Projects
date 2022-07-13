//
//  DictionaryManager.swift
//  Express Dictionary iOS
//
//  Created by Cheese & Cupcake on 13/7/2565 BE.
//

import Foundation

protocol DictionaryManagerDelegate {
	func didGetDictCollection(_ newCollection: [DictionaryModel])
	func didFailUpdateDicUpdate(_ err: Error?)
}

struct DictionaryManager {
	
	let baseURL = "https://api.dictionaryapi.dev/api/v2/entries/en/"
	var delegate: DictionaryManagerDelegate?
	
	private func castDictDataToModel(_ data: DictionaryData, meaningAt index: Int) -> DictionaryModel {
		return DictionaryModel(definitionText: data.meanings[index].definitions[0].definition, partOfSpeech: data.meanings[index].partOfSpeech)
	}
	
	private func parseJson(_ data: Data?) -> [DictionaryModel]? {
		// Create Json decoder for cast raw data to defined array of Dictionary Data
		let jsonDecoder = JSONDecoder()
		if let safeData = data {
			do {
				let dictData: [DictionaryData] = try jsonDecoder.decode([DictionaryData].self, from: safeData)
				
				// Since there are different meaning and part of speech, we collect at most 3 different meanings
				var result: [DictionaryModel] = []
				for i in 0 ..< min(dictData[0].meanings.count, 3) {
					result.append(castDictDataToModel(dictData[0], meaningAt: i))
				}
				return result
				
			} catch {
				print("Parsing Error")
				print(error)
			}
			
		}
		return nil
	}
	
	public func fetchDataMeaning(word: String) {
		let fullURL = baseURL + word
		// perform request
		
		// 1. Create URL
		let url = URL(string: fullURL)
		if let url = url {
			
			// 2. Create Session
			let session =  URLSession(configuration: .default)
			
			// 3. Give Session a task
			let task = session.dataTask(with: url) { result, res, err in
				// Nil Base cases
				if err != nil {
					delegate?.didFailUpdateDicUpdate(err!)
					return
				}
				if result == nil {
					delegate?.didFailUpdateDicUpdate(err!)
					return
				}
				
				// Successfully get array of dictionary model
				if let safeData = parseJson(result) {
					// print("Safe Data: \(safeData)")
					delegate?.didGetDictCollection(safeData)
				} else {
					delegate?.didFailUpdateDicUpdate(DictionaryManagerErrors.SearchNotFound)
				}
				
			}
			
			// 4. Perform task
			task.resume()
		}
	}
	
}
