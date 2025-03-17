import Foundation

func isArmstrongNumber(_ number: Int) -> Bool {
    // Write your code for the 'Armstrong Numbers' exercise here.
    let digits = String(number).compactMap { $0.wholeNumberValue }
    let count = digits.count
    var total = 0
    
    for digit in digits {
        total += Int(pow(Double(digit), Double(count)))
    }
    
    if total == number {
        return true
    }
    
    return false
}

print(isArmstrongNumber(153))
