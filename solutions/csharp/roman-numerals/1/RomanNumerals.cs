public static class RomanNumeralExtension
{
    public static string ToRoman(this int value)
    {
        string result = "";
        
        int number = value;
        
            if (number / 1000 > 0)
            {
                for (var j = 0; j < number / 1000; j++)
                {
                    result += "M";
                }

                number = number % 1000;
            }

            if (number / 100 > 0)
            {
                int newNumber = number / 100;

                if (newNumber == 9)
                {
                    result += "CM";
                }
                else if (newNumber == 5)
                {
                    result += "D";
                }
                else if (newNumber == 4)
                {
                    result += "CD";
                }

                if (newNumber == 8 || newNumber == 7 || newNumber == 6)
                {
                    result += "D";
                    for (var j = 0; j < newNumber - 5; j++)
                    {
                        result += "C";
                    }
                }

                if (newNumber < 4)
                {
                    for (var j = 0; j < newNumber; j++)
                    {
                        result += "C";
                    }
                }

                number = number % 100;
            }

            if (number / 10 > 0)
            {
                int newNumber = number / 10;

                if (newNumber == 9)
                {
                    result += "XC";
                }
                else if (newNumber == 5)
                {
                    result += "L";
                }
                else if (newNumber == 4)
                {
                    result += "XL";
                }

                if (newNumber == 8 || newNumber == 7 || newNumber == 6)
                {
                    result += "L";
                    for (var j = 0; j < newNumber - 5; j++)
                    {
                        result += "X";
                    }
                }

                if (newNumber < 4)
                {
                    for (var j = 0; j < newNumber; j++)
                    {
                        result += "X";
                    }
                }
                number = number % 10;
            }

            if (number / 1 > 0)
            {
                if (number == 9)
                {
                    result += "IX";
                }
                else if (number == 5)
                {
                    result += "V";
                }
                else if (number == 4)
                {
                    result += "IV";
                }

                if (number == 8 || number == 7 || number == 6)
                {
                    result += "V";
                    for (var j = 0; j < number - 5; j++)
                    {
                        result += "I";
                    }
                }

                if (number < 4)
                {
                    for (var j = 0; j < number; j++)
                    {
                        result += "I";
                    }
                }
            }
        
        return result;
    }
}