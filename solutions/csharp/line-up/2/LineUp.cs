public static class LineUp
{
    public static string Format(string name, int number)
    {
        string suffix = "";

        if (number % 10 == 1 && number % 100 != 11)
        {
            suffix = "st";
        }
        else if (number % 10 == 2 && number % 100 != 12)
        {
            suffix = "nd";
        }
        else if (number % 10 == 3 && number % 100 != 13)
        {
            suffix = "rd";
        }
        else
        {
            suffix = "th";
        }
        

        return $"{name}, you are the {number}{suffix} customer we serve today. Thank you!";
    }
}
