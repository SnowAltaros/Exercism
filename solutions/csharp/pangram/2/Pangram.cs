public static class Pangram
{
    public static bool IsPangram(string input)
    {
        var letters = new HashSet<char>();

        foreach (char c in input.ToLower())
        {
            if (c >= 'a' && c <= 'z') letters.Add(c);
        }
        
        return letters.Count == 26;
    }
}
