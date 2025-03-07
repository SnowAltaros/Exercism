import Foundation

class Squares {
  // Write your code for the 'Difference Of Squares' exercise here.
    var number: Int
    
    init(_ number: Int) {
        self.number = number
    }
    
    var squareOfSum: Int {
        var sum = 0
        for num in 1...number {
            sum += num
        }
        return sum * sum
    }
    
    var sumOfSquares: Int {
        var sum = 0
        for num in 1...number {
            sum += num * num
        }
        return sum
    }
    
    var differenceOfSquares: Int {
        return squareOfSum - sumOfSquares
    }
}

var test = Squares(5)
print(test.squareOfSum)
var test2 = Squares(10)
print(test2.sumOfSquares)
print(test2.differenceOfSquares)


