//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
	
	var messages: [Message] = [
		Message(sender: "hello@hotmail.com", body: "Hello!"),
		Message(sender: "hola@hotmail.com", body: "Hola!"),
		Message(sender: "hello@hotmail.com", body: "Gooood"),
	]
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		tableView.dataSource = self
		title = K.appName
		navigationItem.hidesBackButton = true
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
		
    }
    
	@IBAction func pressedLogOut(_ sender: UIBarButtonItem) {
		let firebaseAuth = Auth.auth()
		do {
			try firebaseAuth.signOut()
			navigationController?.popToRootViewController(animated: true)
		} catch let signOutError as NSError {
			print("Error signing out: %@", signOutError)
		}
		
	}
	
}

// MARK: - TableView Datasource [Delegate]
extension ChatViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.messages.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		//
		let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
		cell.textLabel?.text = messages[indexPath.row].body
		return cell
	}
	
	
}
