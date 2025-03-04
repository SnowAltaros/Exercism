func sliceSize(diameter: Double?, slices: Int?) -> Double? {

  func sliceArea(diameter: Double, slices: Int) -> Double {
    let radius = diameter / 2
    let totalArea = Double.pi * radius * radius
    return totalArea / Double(slices)
}
  
  switch (diameter, slices) {
    case let (valA?, valB?):
      if valA < 0 || valB < 1 {
        return nil
      }
      return sliceArea(diameter: valA, slices: valB)
    default: return nil
  }
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let first = (diameter: Double(diameterA), slices: Int(slicesA))
  let second = (diameter: Double(diameterB), slices: Int(slicesB))

  let firstArea = sliceSize(diameter: first.diameter, slices: first.slices)
  let secondArea = sliceSize(diameter: second.diameter, slices: second.slices)

  switch (firstArea, secondArea) {
    case let (valA?, valB?):
      if valA > valB {
        return "Slice A is bigger"
      } else if valA < valB {
        return "Slice B is bigger"
      } else {
        return "Neither slice is bigger"
      }
    case let (valA?, valB):
      return "Slice A is bigger"
    case let (valA, valB?):
      return "Slice B is bigger"
    default: return "Neither slice is bigger"
  }
}
