import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
  let splited = poem.components(separatedBy: "\n")
  return splited
}

func firstLetter(_ line: String) -> Character {
  if let first = line.first {
    return first
  }
  return "_"
}

func capitalize(_ phrase: String) -> String {
  var newArray = [String]()
  let lowercased = phrase.lowercased()
  let splited = lowercased.components(separatedBy: " ")
  for word in splited {
    let newWord = word.capitalized
    newArray.append(newWord)
  }
  let joined = newArray.joined(separator: " ")
  return joined
}

func trimSentence(_ line: String) -> String {
  var newArray = [String]()
  let splited = line.components(separatedBy: " ")
  for word in splited {
    if word.isEmpty == false && word != "\t" {
      newArray.append(word)
    }
  }
  let joined = newArray.joined(separator: " ")
  return joined
}

func lastLetter(_ line: String) -> Character {
  guard let last = line.last else { return "_"}
  return last
}

func backDoorPassword(_ phrase: String) -> String {
  let lowercased = phrase.lowercased()
  let newPhrase = lowercased.capitalized
  let polite = newPhrase + ", please"
  return polite
}

func ithLetter(_ line: String, i: Int) -> Character {
  guard line.count > i else { return " "}
  let index = line.index(line.startIndex, offsetBy: i)
  return line[index]
}

func secretRoomPassword(_ phrase: String) -> String {
  let shutout = phrase.uppercased()
  return shutout + "!"
}
