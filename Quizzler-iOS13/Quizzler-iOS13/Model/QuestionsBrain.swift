//
//  QuestionsBrain.swift
//  Quizzler-iOS13
//
//  Created by Cheese & Cupcake on 28/6/2565 BE.
//  Copyright © 2565 BE The App Brewery. All rights reserved.
//

import Foundation

struct QuestionsBrain {
    private let questions_array: [Question] = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")

    ]
    
    // Current question number
    private var curr_q_index: Int = 0
    
    public func isRanOutOfQuestion() -> Bool {
        return self.curr_q_index >= self.questions_array.count
    }
    
    public func getCurrentQuestion() throws -> String {
        if self.isRanOutOfQuestion() {
            throw QuestionError.outOfQuestions
        }
        return self.questions_array[self.curr_q_index].text
    }
    
    public func getCurrentAnswer() throws -> String {
        if self.isRanOutOfQuestion() {
            throw QuestionError.outOfQuestions
        }
        
        return self.questions_array[self.curr_q_index].answer
    }
    
    public func getCurrentQuestionIndex() -> Int {
        return self.curr_q_index
    }
    
    public func getTotalQuestions() -> Int {
        return self.questions_array.count
    }
    
    public mutating func increaseCurrIndex() {
        self.curr_q_index += 1
    }
    
    public func isAnswerCorrect(of _answer: String) throws -> Bool  {
        // validate answer
        if !["True", "False"].contains(_answer) {
            throw QuestionError.invalidAnswer
        }
        
        // index should not be out of bound
        if self.isRanOutOfQuestion() {
            throw QuestionError.outOfQuestions
        }
        
        return _answer == self.questions_array[curr_q_index].answer
    }
    
    
}
