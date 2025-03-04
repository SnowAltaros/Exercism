func timeToPrepare(drinks: [String]) -> Double {
  var total = 0.0

  for drink in drinks {
    switch drink {
      case "soda", "beer", "water":
        total += 0.5
      case "shot":
        total += 1.0
      case "mixed drink":
        total += 1.5
      case "fancy drink":
        total += 2.5
      case "frozen drink":
        total += 3.0
      default: total += 0
    }
  }

  return total
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  var wedges = 0
  var allLimes = limes
  var totalUsed = 0

  while wedges < needed && !allLimes.isEmpty {
    let firstLime = allLimes[0]
    allLimes.remove(at: 0)

    switch firstLime {
      case "small": wedges += 6
      case "medium": wedges += 8
      case "large": wedges += 10
      default: wedges += 0
    }

    totalUsed += 1
  }

  return totalUsed
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var leftTime = Double(minutesLeft)
  var orders = remainingOrders

  while leftTime > 0 && !orders.isEmpty {
    let toPrepare = orders[0]
    orders.remove(at: 0)
    let preparedTime = timeToPrepare(drinks: toPrepare)
    leftTime -= preparedTime
  }

  return orders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
  var beerOrders: [String] = []
  var sodaOrders: [String] = []
    
  // Categorize orders based on the drink type
  for order in orders {
    if order.drink == "beer" {
       beerOrders.append(order.time)
    } else if order.drink == "soda" {
           sodaOrders.append(order.time)
    }
  }
    
    // Helper function to extract order details
  func orderDetails(_ times: [String]) -> (first: String, last: String, total: Int)? {
    guard !times.isEmpty else { return nil }
    return (first: times.first!, last: times.last!, total: times.count)
  }
    
  return (beer: orderDetails(beerOrders), soda: orderDetails(sodaOrders))
}
