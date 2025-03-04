func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  let length = stack.count
  if index <= length - 1 && index >= 0 {
    var newStack = stack
    newStack[index] = newCard
    return newStack
  } else {
    return stack
  }
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var newStack = stack
  newStack.append(newCard)
  return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    let length = stack.count
  if index <= length - 1 && index >= 0 {
    var newStack = stack
    newStack.remove(at: index)
    return newStack
  } else {
    return stack
  }
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  let length = stack.count
  if length == 0 {
    return stack
  }
  var newStack = stack
  newStack.remove(at: length - 1)
  return newStack
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  var newStack = stack
  newStack.insert(newCard, at: 0)
  return newStack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
  let length = stack.count
  if length == 0 {
    return stack
  }
  var newStack = stack
  newStack.remove(at: 0)
  return newStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  let length = stack.count
  if length == size {
    return true
  }
  return false
}

func evenCardCount(_ stack: [Int]) -> Int {
  var totalEven = 0

  for number in stack {
    if number.isMultiple(of: 2) {
      totalEven += 1
    }
  }

  return totalEven
}
