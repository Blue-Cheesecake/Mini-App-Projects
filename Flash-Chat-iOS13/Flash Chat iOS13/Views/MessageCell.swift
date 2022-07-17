//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by Cheese & Cupcake on 17/7/2565 BE.
//  Copyright © 2565 BE Angela Yu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

	@IBOutlet var avatarImage: UIImageView!
	@IBOutlet var messageBubble: UIView!
	@IBOutlet var messageText: UILabel!
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
