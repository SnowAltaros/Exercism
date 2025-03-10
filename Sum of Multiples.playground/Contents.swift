import Foundation

func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
  // Write your code for the 'SumOfMultiples' exercise in this method.
    var totalEnergy = 0
    var allMultiples = [Int]()
    
    for number in inMultiples {
        let multipleOfNumber = (1..<limit).filter { $0.isMultiple(of: number) }
        allMultiples.append(contentsOf: multipleOfNumber)
    }
    
    let uniqueNumbers = allMultiples.enumerated().filter { index, value in
        allMultiples.firstIndex(of: value) == index
    }.map { $0.element }
    
    for number in uniqueNumbers {
        totalEnergy += number
    }
    
    
    return totalEnergy
}
