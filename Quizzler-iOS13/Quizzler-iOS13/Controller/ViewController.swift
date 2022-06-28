//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var questionBrain: QuestionsBrain = QuestionsBrain()
    var score: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // assume that our questions array is not empty
        do {
            try self.questionLabel.text = questionBrain.getCurrentQuestion()
            self.progressBar.progress = 0.0
        } catch {
            print(error.localizedDescription)
        }
        
    }
    
    private func updateProgressbar(with newProgress: Float, of progressBar: UIProgressView) {
        // print(newProgress)
        progressBar.progress = newProgress
    }
    
    private func displayQuestion(with question: String, to label: UILabel, as_long_as isValid: Bool) {
        if isValid {
            label.text = question
        }
    }
    
    private func disableButton(with_condition isValid: Bool, _ buttons: UIButton...) {
        if isValid {
            for eachButt in buttons {
                eachButt.isEnabled = false
            }
        }
    }
    
    private func changeButtonBgColor(with color: UIColor, of button: UIButton, for delay_sec: Double) {
        button.backgroundColor = color
//        DispatchQueue.main.asyncAfter(deadline: .now() + delay_sec, execute: {
//            button.backgroundColor = UIColor.clear
//        })
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: {_ in
            button.backgroundColor = UIColor.clear
        })
    }
    
    
    @IBAction func pressedAnswerButton(_ sender: UIButton) {
        do {
            if try self.questionBrain.isAnswerCorrect(of: sender.currentTitle!) {
                self.score += 1
            }
            
            // move to the next question number
            self.questionBrain.increaseCurrIndex()
            
            self.updateProgressbar(with: (Float(self.questionBrain.getCurrentQuestionIndex()) / Float(self.questionBrain.getTotalQuestions())), of: self.progressBar)
            
            print(questionBrain.isRanOutOfQuestion())
            
            try self.displayQuestion(with: self.questionBrain.getCurrentQuestion(), to: self.questionLabel, as_long_as: !questionBrain.isRanOutOfQuestion())
        } catch {
            print(error.localizedDescription)
        }
    }
    
}

