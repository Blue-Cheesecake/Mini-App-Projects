//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
		// filter the email and password first before go to create user
		if let email = emailTextfield.text, let password = passwordTextfield.text {
			// Creating user in firebase
			Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
				if error != nil {
					print("Firebase: Creating user failed")
					print(error!.localizedDescription)
					return
				}
				self.performSegue(withIdentifier: "RegisterToChatView", sender: self)
			}
		}
		
    }
    
}
