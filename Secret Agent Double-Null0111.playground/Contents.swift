func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func answer(answer: String) -> String {
    if answer == password {
      return secret
    } else {
      return "Sorry. No hidden secrets here."
    }
  }
  return answer
}
func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let first = f(room)
  let second = f(first)
  let third = f(second)
  return (first, second, third)
}
