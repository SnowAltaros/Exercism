using System.Text;

public static class Identifier
{
    public static string Clean(string identifier)
    {
        StringBuilder sb = new StringBuilder();
        bool toUpperNext = false;

        foreach (char c in identifier)
        {
            if (c == '-')
            {
                toUpperNext = true;
            }
            else if (c == ' ')
            {
                sb.Append("_");
            }
            else if (c == '\0')
            {
                sb.Append("CTRL");
            }
            else if (!char.IsLetter(c) || char.IsLower(c) && (c >= '\u0370' && c <= '\u03ff'))
            {
               
            }
            else
            {
                sb.Append(toUpperNext ? char.ToUpper(c) : c);
                toUpperNext = false;
            }
        }

        return sb.ToString();
    }
}
