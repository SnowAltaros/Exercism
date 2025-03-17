import Foundation

class ETL {
    static func transform(_ old: [String: [String]]) -> [String: Int] {
        // Write your code for the 'Etl' exercise in this file.
        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
        var new: [String: Int] = [:]
        
        for letter in alphabet {
            for (key, value) in old {
                if value.contains(String(letter.uppercased())) {
                    new[String(letter)] = Int(key)
                }
            }
        }
        return new
    }
    
    static func transform1(_ old: [String: [String]]) -> [String: Int] {
        // Write your code for the 'Etl' exercise in this file.
        var new: [String: Int] = [:]
        
        for (key, value) in old {
            for letter in value {
                new[String(letter.lowercased())] = Int(key)
            }
        }
        return new
    }
}


