func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8.0
}
func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let totalHours = Double(hourlyRate) * 8.0 * 22.0
  let discounted = (totalHours * discount) / 100.0
  let total = totalHours - discounted
  return total.rounded()
}
func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let budgetPerDay = Double(hourlyRate) * 8.0
  let discounted = (budgetPerDay * discount) / 100
  let discountedDay = budgetPerDay - discounted
  let workingDays = budget / discountedDay
  return workingDays.rounded(.down)
}
