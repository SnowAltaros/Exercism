public static class Pangram
{
    public static bool IsPangram(string input)
    {
        char[] letters = new []{'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

        foreach (var letter in letters)
        {
            if (!input.ToLower().Contains(letter))
            {
                return false;
            }
        }
        
        return true;
    }
}
