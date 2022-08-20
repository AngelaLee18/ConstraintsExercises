import UIKit

class RecivedMessegeCell: UITableViewCell {
    
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var messages: UILabel!
    @IBOutlet weak var time: UILabel!
    
    func ShowMessages(_ recived: MessageData) {
        user.text = recived.username
        messages.text = recived.message
        time.text = recived.timeMessage
        
    }

    
    
}
