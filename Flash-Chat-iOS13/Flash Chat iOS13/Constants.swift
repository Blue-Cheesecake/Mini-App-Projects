//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by Cheese & Cupcake on 16/7/2565 BE.
//  Copyright © 2565 BE Angela Yu. All rights reserved.
//

struct K {
	
	static let appName = "⚡️FlashChat"
	static let cellIdentifier = "ReusableCell"
	static let cellNibName = "MessageCell"
	static let registerSegue = "RegisterToChatView"
	static let loginSegue = "LogInToChatView"
	
	struct BrandColors {
		static let purple = "BrandPurple"
		static let lightPurple = "BrandLightPurple"
		static let blue = "BrandBlue"
		static let lighBlue = "BrandLightBlue"
	}
	
	struct FStore {
		static let collectionName = "messages"
		static let senderField = "sender"
		static let bodyField = "body"
		static let dateField = "date"
	}
}

