public static class ReverseString
{
    public static string Reverse(string input)
    {
        char[] stringCharacters = input.ToCharArray().Reverse().ToArray();
        string reversedString = new string(stringCharacters);
        return reversedString;
    }
}