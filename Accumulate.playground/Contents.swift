import Foundation

extension Array {
    func accumulate<U>(_ operation: (Element) -> U) -> [U] {
        var newArray: [U] = []
        
        for element in self {
            newArray.append(operation(element))
        }
        
        return newArray
    }
}
