import Foundation

func gigasecond(from: Date) -> Date {
  // Write your code for the 'Gigasecond' exercise in this file.
    var givenDate = from
    let gigasecond = 1_000_000_000
    
    return Calendar.current.date(byAdding: .second, value: gigasecond, to: givenDate) ?? givenDate
}

print(gigasecond(from: Date.now))
