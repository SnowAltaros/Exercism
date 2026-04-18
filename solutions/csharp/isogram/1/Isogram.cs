public static class Isogram
{
    public static bool IsIsogram(string word)
    {
        List<char> letters = new List<char>();
        foreach (var c in word.ToLower())
        {
            if (!letters.Contains(c) || !char.IsLetter(c))
            {
                letters.Add(c);
            }
            else
            {
                return false;
            }
        }
        return true;
    }
}
