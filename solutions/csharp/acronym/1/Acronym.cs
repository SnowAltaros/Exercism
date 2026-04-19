using System.Text;
public static class Acronym
{
    public static string Abbreviate(string phrase)
    {
        StringBuilder phraseBuilder = new StringBuilder();
        string[]words = phrase.Split(new char[] {' ', '-'});
        foreach (var word in words)
        {
            foreach (var c in word)
            {
                if (char.IsLetter(c))
                {
                    phraseBuilder.Append(char.ToUpper(c));
                    break;
                }
            }
        }
        return phraseBuilder.ToString();
    }
}