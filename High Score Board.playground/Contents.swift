func newScoreBoard() -> [String: Int] {
  let highScore: [String: Int] = [:]
  return highScore
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
  scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
  scores.removeValue(forKey: name)
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
  if scores[name] != nil {
    scores[name] = 0
  }
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  if scores[name] != nil {
    scores[name]! += delta
  }
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
  func sortByName(_ lhs: (String, Int), _ rhs: (String, Int)) -> Bool {
    let left = lhs.0
    let right = rhs.0

    return left < right
  }
  return scores.sorted(by: sortByName)
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  func sortByName(_ lhs: (String, Int), _ rhs: (String, Int)) -> Bool {
    let left = lhs.1
    let right = rhs.1

    return left > right
  }
  return scores.sorted(by: sortByName)
}
