import Foundation

class Bob {
    static func response(_ message: String) -> String {
        // Write your code for the 'Bob' exercise in this file.
        let income = message.trimmingCharacters(in: .whitespacesAndNewlines)
        let isQuestion = income.last == "?"
        let containsLetters = income.rangeOfCharacter(from: .letters) != nil
        let isYelling = containsLetters && income.uppercased() == income
        
        if income.isEmpty {
            return "Fine. Be that way!"
        } else if isYelling && isQuestion {
            return "Calm down, I know what I'm doing!"
        } else if isYelling {
            return "Whoa, chill out!"
        } else if isQuestion {
            return "Sure."
        }
        
        return "Whatever."  }
}
