//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Cheese & Cupcake on 28/6/2565 BE.
//  Copyright © 2565 BE The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var answer: String
    
    init(q _text: String, a _answer: String) {
        self.text = _text
        self.answer = _answer
    }
}
