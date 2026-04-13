public static class LineUp
{
    public static string Format(string name, int number)
    {
        string numberString = number.ToString();
        char lastNumber = number.ToString().Last();
        string ordinalNumber = "";

        if (lastNumber == '1' && !numberString.Contains("11"))
        {
            ordinalNumber = $"{number}st";
        }
        else if (lastNumber == '2' && !numberString.Contains("12"))
        {
            ordinalNumber = $"{number}nd";
        }
        else if (lastNumber == '3' && !numberString.Contains("13"))
        {
            ordinalNumber = $"{number}rd";
        }
        else
        {
            ordinalNumber = $"{number}th";
        }

        return $"{name}, you are the {ordinalNumber} customer we serve today. Thank you!";
    }
}
