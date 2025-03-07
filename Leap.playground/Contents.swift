import Foundation

class Year {
  // Write your code for the 'Leap' exercise in this file.
    var calendarYear: Int
    
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
    }
    
    var isLeapYear: Bool {
        if calendarYear % 100 == 0 {
            if calendarYear % 400 == 0 {
                return true
            }
        } else if calendarYear % 4 == 0 {
            return true
        }
        return false
    }
}
