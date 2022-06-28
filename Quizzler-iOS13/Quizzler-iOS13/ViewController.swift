//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

struct Question {
    var text: String
    var answer: String
    
    init(_text: String, _answer: String) {
        self.text = _text
        self.answer = _answer
    }
}

let questions_array: [Question] = [
    Question(_text: "Five plus Two equals to Seven", _answer: "True"),
    Question(_text: "Sprite is smart", _answer: "True"),
    Question(_text: "Sprite's birtday is 16 Nov 2002", _answer: "True"),
    Question(_text: "Kean is very cute", _answer: "True"),
    Question(_text: "macOS can't play game", _answer: "False")
]

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var current_question_no: Int = 0
    var score: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // assume that our questions array is not empty
        self.questionLabel.text = questions_array[0].text
        self.progressBar.progress = 0.0
        
    }
    
    private func updateProgressbar(with newProgress: Float, of progressBar: UIProgressView) {
        print(newProgress)
        progressBar.progress = newProgress
    }
    
    private func changeQuestion(with question: String, to label: UILabel) {
        label.text = question
    }
    
    /**
     return `true` if answered correctly, `false` otherwise
     */
    private func computeScore(of suspect: String, actualAnswer: String) -> Bool {
        if suspect == actualAnswer {
            self.score += 1
            return true
        }
        return false
    }
    
    
    @IBAction func pressedAnswerButton(_ sender: UIButton) {
        
        if computeScore(of: sender.currentTitle!, actualAnswer: questions_array[current_question_no].answer) {
            print("correct!")
        } else {
            print("Booo!")
        }
        
        // move to the next question number
        current_question_no += 1
        self.updateProgressbar(with: (Float(current_question_no) / Float(questions_array.count)), of: self.progressBar)
        if current_question_no >= questions_array.count {
            self.trueButton.isEnabled = false
            self.falseButton.isEnabled = false
            print("Done!?")
            return
        }
        
        self.changeQuestion(with: questions_array[current_question_no].text, to: self.questionLabel)
        
        
        
        
    }
    
}

