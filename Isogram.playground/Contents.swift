import Foundation

func isIsogram(_ string: String) -> Bool {
  // Write your code for the 'Isogram' exercise in this file.
    let lowercased = string.lowercased()
    var seen = [Character]()
    
    for character in lowercased {
        if seen.contains(character) {
            return false
        }
        if character.isLetter {
            seen.append(character)
        }
    }
    
    return true
}

print(isIsogram("Emily Jung Schwartzkopf"))
