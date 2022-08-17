//
//  SendMessages.swift
//  Constraints
//
//  Created by Angela Lee on 16/08/2022.
//

import Foundation
import UIKit

class SendMessegeCell: UITableViewCell {
    
    @IBOutlet weak var sMessage: UILabel!
    @IBOutlet weak var sTime: UILabel!
    
    func ShowMessages(_ send: MessagesData){
        sMessage.text = send.message
        sTime.text = send.timeMessage
        
    }
}
