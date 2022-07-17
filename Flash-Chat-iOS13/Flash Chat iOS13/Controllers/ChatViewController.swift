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
		
		// tableView.delegate = self
		tableView.dataSource = self
		title = K.appName
		navigationItem.hidesBackButton = true
		
		tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
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

// MARK: - TableView Datasource - To Displaying The data to TableView
extension ChatViewController: UITableViewDataSource {
	
	// Return how many row of table view
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.messages.count
	}
	
	// Return the Cell in TableView
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		// Returns a reusable table-view cell object for the specified reuse identifier and adds it to the table.
		let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
		// Add Text
		cell.messageText.text = messages[indexPath.row].body
		return cell
	}
	
	
}

// MARK: - TableView Delegate - Manage when User interact with Cell
//extension ChatViewController: UITableViewDelegate {
//
//	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//		// <#code#>
//	}
//
//}
