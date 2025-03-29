import Foundation

struct ListOps {
    static func append(_ firstList: [Int], _ secondList: [Int]) -> [Int] {
        return firstList + secondList
    }
    
    static func concat(_ lists: [Int]...) -> [Int] {
        var newList: [Int] = []
        
        for list in lists {
            newList += list
        }
        
        return newList
    }
    
    static func filter(_ list: [Int], _ predicate: (Int) -> Bool) -> [Int] {
        var newList = [Int]()
        
        for element in list {
            if predicate(element) {
                newList.append(element)
            }
        }
        
        return newList
    }
    
    static func length(_ list: [Int]) -> Int {
        return list.count
    }
    
    static func map(_ list: [Int], _ function: (Int) -> Int) -> [Int] {
        var newList: [Int] = []
        
        for element in list {
            newList.append(function(element))
        }
        
        return newList
    }
    
    static func foldLeft<T>(_ list: [T], accumulated: T, combine: (T, T) -> T) -> T {
        var folded = accumulated
        
        for item in list {
            folded = combine(folded, item)
        }
        
        return folded
    }
    
    static func foldRight<T>(_ list: [T], accumulated: T, combine: (T, T) -> T) -> T {
        var folded = accumulated
        
        for item in list.reversed() {
            folded = combine(item, folded)
        }
        
        return folded
    }
    
    static func reverse(_ list: [Int]) -> [Int] {
        var reversedList: [Int] = []
        
        for element in list {
            reversedList.insert(element, at: 0)
        }
        
        return reversedList
    }
}
