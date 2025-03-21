import Foundation

enum GrainsError: Error {
    case inputTooLow
    case inputTooHigh
}

struct Grains {
    static func square(_ num: Int) throws -> UInt64 {
        // Write your code for the 'Grains' exercise in this file.
        guard num > 0 else { throw GrainsError.inputTooLow }
        
        guard num <= 64 else { throw GrainsError.inputTooHigh }
        
        var grains = UInt64(pow(2.0, Double(num - 1)))
        
        return grains
    }
    
    static let total = UInt64.max
}

