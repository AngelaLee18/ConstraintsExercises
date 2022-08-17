//
//  DataLoader.swift
//  Constraints
//
//  Created by Angela Lee on 16/08/2022.
//

import Foundation

public class DataLoader {
    
    func loadMessages() -> [MessagesData] {
        
        if let fileLocation = Bundle.main.url(forResource: "messages", withExtension: "json") {
            
            do {
                let jsonData = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([MessagesData].self, from:jsonData )
                
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
