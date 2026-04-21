public class Anagram
{
    private string _baseWord;
    public Anagram(string baseWord)
    {
        this._baseWord = baseWord;
    }

    public string[] FindAnagrams(string[] potentialMatches)
    {
        var words = new List<string>();
        foreach (var word in potentialMatches)
        {
            var newWord = "";
            var workingWord = _baseWord.ToLower();
            
            foreach (var letter in word)
            {
                int letterIndex = workingWord.IndexOf(char.ToLower(letter));
                
                if (!workingWord.ToLower().Contains(char.ToLower(letter)))
                {
                    newWord = "";
                    break;
                }
                
                newWord += letter;
                
                workingWord = workingWord.Remove(letterIndex, 1);
            }

            if (newWord.Length != _baseWord.Length || newWord.ToLower().Equals(_baseWord.ToLower()))
            {
                newWord = "";
            }
            else
            {
                words.Add(newWord);
            }
        }
        
        return words.ToArray();
    }
}