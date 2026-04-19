public static class Bob
{
    public static string Response(string statement)
    {
        if (statement.Trim() == string.Empty)
        {
            return "Fine. Be that way!";
        }

        if (statement.Trim().EndsWith('?') && IsUppercased(statement))
        {
            return "Calm down, I know what I'm doing!";
        }

        if (statement.Trim().EndsWith('?'))
        {
            return "Sure.";
        }

        if (IsUppercased(statement))
        {
            return "Whoa, chill out!";
        }

        return "Whatever.";
    }

     private static bool IsUppercased(string statement)
    {
        if (IsContainingLetters(statement))
        {
            foreach (var c in statement.Trim())
            {
                if (char.IsLetter(c) && !char.IsUpper(c))
                {
                    return false;
                }
            }
        }
        else
        {
            return false;
        }
        
        return true;
    }

    private static bool IsContainingLetters(string statement)
    {
        foreach (var c in statement)
        {
            if (char.IsLetter(c))
            {
                return true;
            }
        }

        return false;
    }
}