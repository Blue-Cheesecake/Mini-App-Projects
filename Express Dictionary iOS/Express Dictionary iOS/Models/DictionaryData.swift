//
//  DictionaryData.swift
//  Express Dictionary iOS
//
//  Created by Cheese & Cupcake on 13/7/2565 BE.
//

import Foundation

struct DictionaryData: Decodable {
	let word: String
	let meanings: [Meaning]
}

struct Meaning: Decodable {
	let partOfSpeech: String
	let definitions: [Definition]
}

struct Definition: Decodable {
	let definition: String
}
