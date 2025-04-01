import Foundation

func raindrops(_ number: Int) -> String {
  // Write your code for the 'Raindrops' exercise in this file.
    var toReturn = ""
    
    // THIS IS FIRST SOLUTION
//    if number.isMultiple(of: 3) && number.isMultiple(of: 5) && number.isMultiple(of: 7) {
//        toReturn = "PlingPlangPlong"
//    } else if number.isMultiple(of: 3) && number.isMultiple(of: 5) {
//        toReturn = "PlingPlang"
//    } else if number.isMultiple(of: 5) && number.isMultiple(of: 7) {
//        toReturn = "PlangPlong"
//    } else if number.isMultiple(of: 3) && number.isMultiple(of: 7) {
//        toReturn = "PlingPlong"
//    } else if number.isMultiple(of: 3) {
//        toReturn = "Pling"
//    } else if number.isMultiple(of: 5) {
//        toReturn = "Plang"
//    } else if number.isMultiple(of: 7) {
//        toReturn = "Plong"
//    } else {
//        toReturn = String(number)
//    }
    
    // SECOND SOLUTION
    if number.isMultiple(of: 3) {
        toReturn += "Pling"
    }
    if number.isMultiple(of: 5) {
        toReturn += "Plang"
    }
    if number.isMultiple(of: 7) {
        toReturn += "Plong"
    }
 
    return toReturn.isEmpty ? String(number) : toReturn
}

