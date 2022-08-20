import UIKit

class SendMessegeCell: UITableViewCell {
    
    @IBOutlet weak var sMessage: UILabel!
    @IBOutlet weak var sTime: UILabel!
    
    func ShowMessages(_ send: MessageData){
        sMessage.text = send.message
        sTime.text = send.timeMessage
        
    }
}
