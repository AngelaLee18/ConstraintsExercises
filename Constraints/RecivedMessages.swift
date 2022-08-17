//
//  RecivedMessages.swift
//  Constraints
//
//  Created by Angela Lee on 16/08/2022.
//

import Foundation
import UIKit

class RecivedMessegeCell: UITableViewCell {
    
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var messages: UILabel!
    @IBOutlet weak var time: UILabel!
    
    func ShowMessages(_ recived: MessagesData) {
        user.text = recived.username
        messages.text = recived.message
        time.text = recived.timeMessage
        
    }

    
    
}
