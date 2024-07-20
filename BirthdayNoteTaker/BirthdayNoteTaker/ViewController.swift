//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Cheese Macaron on 20/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var datePickerField: UIDatePicker!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.string(forKey: "name")
        let storedDate = UserDefaults.standard.object(forKey: "date")
        if let storedName = storedName {
            nameLabel.text = storedName
        }
        if let storedDate = storedDate as? Date {
            birthdayLabel.text = storedDate.description
        }
    }


    @IBAction func onSave(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        UserDefaults.standard.set(datePickerField.date, forKey: "date")
                
        nameLabel.text = "Name: \(String(describing: nameTextField.text))"
        print(datePickerField.date)
        birthdayLabel.text = datePickerField.date.description
    }
}

