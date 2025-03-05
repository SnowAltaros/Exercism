import Foundation

// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    guard elapsedMinutes < expectedMinutesInOven else { return 0 }
    return expectedMinutesInOven - elapsedMinutes
}
// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
    let layerCount = layers.count
    return layerCount * 2
}
// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    var noodleCount = 0
    var sauceCount = 0.0
    for layer in layers {
        if layer == "noodles" {
            noodleCount += 3
        } else if layer == "sauce" {
            sauceCount += 0.2
        }
    }
    return (noodleCount, sauceCount)
}
// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
    return amount.sauce *= 33.814
}
// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
    func cheese(_ layers: [String]) -> Int {
        var total = 0
        for layer in layers {
            if layer == "mozzarella" || layer == "ricotta" || layer == "béchamel" {
                total += 1
            }
        }
        return total
    }
    
    func meatAndSauce(_ layers: [String]) -> Int {
        var total = 0
        for layer in layers {
            if layer == "sauce" || layer == "meat" {
                total += 1
            }
        }
        return total
    }
    
    let totalCheese = cheese(layers)
    let totalMeatAndSauce = meatAndSauce(layers)
    
    if totalCheese > totalMeatAndSauce {
        return false
    }
    
    return true
}
