public static class RunLengthEncoding
{
    public static string Encode(string input)
        {
            string encoded = "";
            char character = new char();
            int counter = 0;
            
            foreach (var c in input)
            {
                if (character != c && counter == 0)
                {
                    character = c;
                    counter++;
                }
                else if (character != c && counter > 0)
                {
                    encoded += counter == 1 ? character : $"{counter}{character}";
                    
                    counter = 1;
                    character = c;
                }
                else if (character == c)
                {
                    counter++;
                }
            }

            if (counter > 0)
            {
                encoded += counter == 1 ? character : $"{counter}{character}";
            }
            
            return encoded;
        }

    public static string Decode(string input)
        {
            string decoded = string.Empty;
            int counter = 0;
            foreach (var c in input)
            {
                if (char.IsLetter(c) || char.IsWhiteSpace(c))
                {
                    if (counter > 0)
                    {
                        for (var i = 0; i < counter; i++)
                        {
                            decoded += c;
                        }
                        counter = 0;
                    }
                    else
                    {
                        decoded += c;
                    }
                }
                else if (char.IsNumber(c))
                {
                    counter = int.Parse($"{counter}{int.Parse(c.ToString())}");
                }
            }
            
            return decoded;
        }
}
