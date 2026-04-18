using System.Text;

public static class RotationalCipher
{
    public static string Rotate(string text, int shiftKey)
    {
        StringBuilder sb = new StringBuilder();
        
        foreach (var c in text)
        {
            if (char.IsLetter(c))
            {
                char baseChar = char.IsUpper(c) ? 'A' : 'a';
                char letter = (char)(baseChar + (c - baseChar + shiftKey) % 26);
                sb.Append(letter);
            }
            else
            {
                sb.Append(c);
            }
        }
        
        return sb.ToString();
    }
}