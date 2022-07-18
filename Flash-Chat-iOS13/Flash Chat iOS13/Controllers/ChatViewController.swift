//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
	let db = Firestore.firestore()
	
	var messages: [Message] = [
		Message(sender: "hello@hotmail.com", body: "Hello!"),
		Message(sender: "hola@hotmail.com", body: "Hola!"),
		Message(sender: "hello@hotmail.com", body: "Gooood"),
	]
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		messageTextfield.delegate = self
		
		// tableView.delegate = self
		tableView.dataSource = self
		title = K.appName
		navigationItem.hidesBackButton = true
		
		tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
		loadMessage()
    }
	
	/**
	 Loading The messages that exist in database to array Messages for displaying when user logged in.
	 Read the data and append to array.
	 */
	func loadMessage() {
		db.collection(K.FStore.collectionName)
			.order(by: K.FStore.dateField)
			.getDocuments { querySnapshot, err in
			if err != nil {
				print("Error getting documents \(err!.localizedDescription)")
				return
			}
			
			for document in querySnapshot!.documents {
				let sender = document.data()[K.FStore.senderField] as? String
				let body = document.data()[K.FStore.bodyField] as? String
				
				if sender == nil || body == nil {
					print("Some of sender or body is nil")
					return
				}
				
				let message = Message(sender: sender!, body: body!)
				self.messages.append(message)
				
				// Table view can reload to redisplay again
				DispatchQueue.main.async {
					self.tableView.reloadData()
				}
			}
			
		}
	}
    
    @IBAction func sendPressed(_ sender: UIButton) {
		// There must be text and user must have signed in first
		// https://firebase.google.com/docs/auth/ios/manage-users
		// https://firebase.google.com/docs/firestore/quickstart#swift
		if let messageText = messageTextfield.text, let email = Auth.auth().currentUser?.email {
			db.collection(K.FStore.collectionName).addDocument(data: [
				K.FStore.senderField: email,
				K.FStore.bodyField: messageText,
				K.FStore.dateField: Date().timeIntervalSince1970
			]) { (err) in
				if let err = err {
					print("Error adding document: \(err)")
				} else {
					print("Successfullly added data to firestore")
				}
			}
			
			// Add new massage to array for displaying
			let newMessage = Message(sender: email, body: messageText)
			self.messages.append(newMessage)
			self.tableView.reloadData()
		}
		messageTextfield.text = ""
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

// MARK: - UITextField Delegate for messageText
extension ChatViewController: UITextFieldDelegate {
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.endEditing(true)
		return true
	}
	
}
