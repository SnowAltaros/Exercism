import Foundation

func twoFer(name: String = "") -> String {
    if name == "" {
        return "One for you, one for me."
    }
    
    return "One for \(name), one for me."
}

