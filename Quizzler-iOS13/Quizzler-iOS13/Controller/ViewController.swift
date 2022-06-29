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
    @IBOutlet weak var scoreAndReButtView: UIView!
    @IBOutlet weak var reAttemptButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
	@IBOutlet weak var resultLabel: UILabel!
	
	var questionBrain: QuestionsBrain = QuestionsBrain()
    var score: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Get the first question & Set the progress bar status to be 0
        do {
            try self.questionLabel.text = questionBrain.getCurrentQuestion()
            self.progressBar.progress = 0.0
        } catch {
            print(error.localizedDescription)
        }
        
		// Hinding
        self.hideView(of: self.scoreAndReButtView)
		self.hideView(of: self.resultLabel)
        
    }
    
    private func hideView(of view: UIView) {
        view.isHidden = true
    }
    
    private func showView(of view: UIView) {
        view.isHidden = false
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
    
	private func unableButton(with_condition isValid: Bool, _ buttons: UIButton...) {
		if isValid {
			for eachButt in buttons {
				eachButt.isEnabled = true
			}
		}
	}
	
	private func updateResult(with_score score: Int) {
		let middle: Int = questionBrain.getTotalQuestions() / 2
		if score > middle {
			self.resultLabel.text = "Pass"
			self.resultLabel.textColor = UIColor.green
		} else {
			self.resultLabel.text = "Failed"
			self.resultLabel.textColor = UIColor.red
		}
	}
	
    private func updateScore(with newScore: Int) {
        self.score = newScore
        
        // Update UI
        self.scoreLabel.text = "Your score: \(self.score)"
    }
    
    private func changeButtonBgColor(with color: UIColor, of button: UIButton, for delay_sec: Double) {
        button.backgroundColor = color

        Timer.scheduledTimer(withTimeInterval: delay_sec, repeats: false, block: {_ in
            button.backgroundColor = UIColor.clear
        })
    }
    

    @IBAction func pressedAnswerButton(_ sender: UIButton) {
        do {
            if try self.questionBrain.isAnswerCorrect(of: sender.currentTitle!) {
                updateScore(with: self.score + 1)
                self.changeButtonBgColor(with: UIColor.green, of: sender.currentTitle! == "True" ? self.trueButton : self.falseButton, for: 0.2)
            } else {
                self.changeButtonBgColor(with: UIColor.red, of: sender.currentTitle! == "True" ? self.trueButton : self.falseButton, for: 0.2)
            }
            
            // move to the next question number
            self.questionBrain.increaseCurrIndex()
            
            self.updateProgressbar(with: (Float(self.questionBrain.getCurrentQuestionIndex()) / Float(self.questionBrain.getTotalQuestions())), of: self.progressBar)
            
	
            self.disableButton(with_condition: self.questionBrain.isRanOutOfQuestion(), self.trueButton, self.falseButton)
            
			// Show the result
            if questionBrain.isRanOutOfQuestion() {
				updateResult(with_score: self.score)
                showView(of: self.scoreAndReButtView)
				showView(of: self.resultLabel)
				return
            }
            
            try self.displayQuestion(with: self.questionBrain.getCurrentQuestion(), to: self.questionLabel, as_long_as: !questionBrain.isRanOutOfQuestion())
            
        } catch {
            print("pressedAnswerButton: \(error.localizedDescription)")
        }
    }
	
	@IBAction func pressedReAttempt(_ sender: UIButton) {
		do {
			print("Resetting...")
			self.updateScore(with: 0)
			self.updateProgressbar(with: 0.0, of: self.progressBar)
			self.hideView(of: self.scoreAndReButtView)
			self.questionBrain.resetCurrIndex()
			try self.displayQuestion(with: self.questionBrain.getCurrentQuestion(), to: self.questionLabel, as_long_as: !self.questionBrain.isRanOutOfQuestion())
			print(!self.questionBrain.isRanOutOfQuestion())
			self.unableButton(with_condition: !self.questionBrain.isRanOutOfQuestion(), self.trueButton, self.falseButton)
			print("Resetting Done!")
		} catch {
			print("pressedReAttempt \(error.localizedDescription)")
		}
	}
	
}

