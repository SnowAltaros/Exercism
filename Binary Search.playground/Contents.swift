import Foundation

enum BinarySearchError: Error {
    case valueNotFound
}

class BinarySearch {
  // Write your code for the 'BinarySearch' exercise in this file.
    var array: [Int]
    
    init(_ array: [Int]) {
        self.array = array
    }
    
    func searchFor(_ target: Int) throws -> Int {
        if array.isEmpty {
            throw BinarySearchError.valueNotFound
        }
        
        let sortedArray = array.sorted()
        var low = 0
        var high = sortedArray.count - 1
        
        for _ in low...high {
            let mid = (low + high) / 2
            if sortedArray[mid] == target {
                return mid
            } else if sortedArray[mid] < target {
                low = mid + 1
            } else if sortedArray[mid] > target {
                high = mid - 1
            }
        }
        
        throw BinarySearchError.valueNotFound
    }
}
