import Foundation

func dartScore(x: Double, y: Double) -> Int {
  // Write your code for the 'Darts' exercise here.
    let distance = sqrt(pow(x - 0, 2) + pow(y - 0, 2))
    
    if distance <= 1 {
        return 10
    } else if distance <= 5 {
        return 5
    } else if distance <= 10 {
        return 1
    }
    
    return 0
}
