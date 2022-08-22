import Foundation

public class DataLoader {
    
    func loadMessages(_ messages: String) -> [MessageData] {
        
        if let fileLocation = Bundle.main.url(forResource: messages, withExtension: "json") {
            
            do {
                let jsonData = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([MessageData].self, from:jsonData )
                
                return dataFromJson
            } catch {
                print("Error: \(error)")
                return []
            }
        } else {
            return []
        }
    }
}
