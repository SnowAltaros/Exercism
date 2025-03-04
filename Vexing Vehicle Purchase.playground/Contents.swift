func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let monthsPer5Years = 5.0 * 12.0
  let monthlyExpenses = price / monthsPer5Years
  let tenPercent = (monthlyBudget * 10.0) / 100.0
  let monthlyBudget10 = monthlyBudget + tenPercent
  if monthlyExpenses <= monthlyBudget {
    return "Yes! I'm getting a \(vehicle)"
  } else if monthlyExpenses > monthlyBudget && monthlyExpenses <= monthlyBudget10 {
    return "I'll have to be frugal if I want a \(vehicle)"
  }
  return "Darn! No \(vehicle) for me"
}

func licenseType(numberOfWheels wheels: Int) -> String {
  if wheels == 2 || wheels == 3 {
    return "You will need a motorcycle license for your vehicle"
  } else if wheels == 4 || wheels == 6 {
    return "You will need an automobile license for your vehicle"
  } else if wheels == 18 {
    return "You will need a commercial trucking license for your vehicle"
  }
  return "We do not issue licenses for those types of vehicles"
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  if yearsOld < 3 {
    return (originalPrice * 80) / 100
  } else if yearsOld >= 3 && yearsOld < 10 {
    return (originalPrice * 70) / 100
  }
  return (originalPrice * 50) / 100
}
