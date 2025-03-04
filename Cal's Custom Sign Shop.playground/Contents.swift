// TODO: define the 'birthday' String constant
let birthday = "Birthday"
// TODO: define the 'valentine' String constant
let valentine = "Valentine's Day"
// TODO: define the 'anniversary' String constant
let anniversary = "Anniversary"
// TODO: define the 'space' Character constant
let space: Character = " "
// TODO: define the 'exclamation' Character constant
let exclamation: Character = "!"
func buildSign(for occasion: String, name: String) -> String {
  return "Happy" + String(space) + occasion + String(space) + name + String(exclamation)
}
func graduationFor(name: String, year: Int) -> String {
  let message = "Congratulations \(name)\(exclamation)\nClass of \(year)"
  return message
}
func costOf(sign: String) -> Int {
  var totalCharacters = sign.count
  let price = totalCharacters * 2 + 20
  return price
}
