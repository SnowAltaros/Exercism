import Foundation

enum StrandLenght: Error {
    case empty, tooLong
}

func compute(_ dnaSequence: String, against: String) throws -> Int? {
  // Write your code for the 'Hamming' exercise in this file.
    if dnaSequence.count == 0 && against.count > 0 {
        throw StrandLenght.empty
    } else if dnaSequence.count > 0 && against.count == 0 {
        throw StrandLenght.empty
    }
    
    if dnaSequence.count > against.count {
        throw StrandLenght.tooLong
    } else if dnaSequence.count < against.count {
        throw StrandLenght.tooLong
    }
    
    var total = 0
    
    for (charA, charB) in zip(dnaSequence, against) where charA != charB {
        total += 1
    }
    
    return total
}
