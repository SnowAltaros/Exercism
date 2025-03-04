let flip: ((String, String, String)) -> (String, String, String) = { wires in
  return (wires.1, wires.0, wires.2)
}

let rotate: ((String, String, String)) -> (String, String, String) = { wires in
  return (wires.1, wires.2, wires.0)
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
  return { number, order in
    let bits = (0..<8).map { (number >> $0) & 1 }
    var newOrder = order
    for bit in bits {
      if bit == 0 {
        newOrder = flipper(newOrder)
      } else if bit == 1 {
        newOrder = rotator(newOrder)
      }
    }
    return newOrder
  }
}
