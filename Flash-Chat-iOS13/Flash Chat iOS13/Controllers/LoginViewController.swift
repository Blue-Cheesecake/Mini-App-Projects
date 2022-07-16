//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
		if let email = emailTextfield.text, let password = passwordTextfield.text {
			Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
				guard let strongSelf = self else { return }
				if let error = error {
					print(error.localizedDescription)
					return
				}
				
				if let safeAuthResult = authResult {
					print(safeAuthResult)
					strongSelf.performSegue(withIdentifier: "LogInToChatView", sender: strongSelf)
				}
			}
		}
    }
    
}

