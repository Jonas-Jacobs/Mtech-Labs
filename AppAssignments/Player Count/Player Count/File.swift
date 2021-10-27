//
//  File.swift
//  Player Count
//
//  Created by Jonas Jacobs on 10/18/21.
//

import Foundation

class Person: Codable {
    
    init(name: String, score: Int) {
    self.score = score
    self.name = name
    }
    
    var name: String
    var score: Int
    
    static let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

    static let archiveURL = documentDirectory.appendingPathComponent("Documents").appendingPathExtension("players.plist")

    static func saveToFile(persons: [Person]) {
        let propertyListEncoder = PropertyListEncoder()
        let encodedEmojis = try? propertyListEncoder.encode(persons)
        try? encodedEmojis?.write(to: archiveURL, options: .noFileProtection)
    }

    static func loadFromFile() -> [Person] {
        let propertyListDecoder = PropertyListDecoder()
        if let retrevedEmojisData = try? Data(contentsOf: archiveURL),
           let decodedEmojis = try? propertyListDecoder.decode(Array<Person>.self, from: retrevedEmojisData){
            return decodedEmojis
        }
        return []
    }
}
