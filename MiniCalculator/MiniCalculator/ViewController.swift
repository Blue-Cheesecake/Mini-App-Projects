//
//  ViewController.swift
//  MiniCalculator
//
//  Created by Cheese Macaron on 15/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func getTextNumbers() -> (num1: Double, num2: Double)? {
        guard let firstText = firstTextField.text, let secondText = secondTextField.text else { return nil }
        let num1 = Double(firstText)
        let num2 = Double(secondText)
        guard let num1 = num1, let num2 = num2 else {
            return nil
        }
        return (num1, num2)
    }
    
    private func executeMethod(_ cb: (Double, Double) -> Double) {
        let nums = getTextNumbers();
        if let (num1, num2) = nums {
            resultText.text = String(cb(num1, num2))
        }
    }

    @IBAction func onPressedAdd(_ sender: Any) {
        executeMethod { num1, num2 in
            num1 + num2
        }
    }
    
    @IBAction func onPressedMinus(_ sender: Any) {
        executeMethod { num1, num2 in
            num1 - num2
        }
    }
    
    @IBAction func onPressedMultiply(_ sender: Any) {
        executeMethod { num1, num2 in
            num1 * num2
        }
    }
    
    @IBAction func onPressedDivide(_ sender: Any) {
        executeMethod { num1, num2 in
            num1 / num2
        }
    }
}

