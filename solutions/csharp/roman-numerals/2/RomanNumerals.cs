using System.Text;

public static class RomanNumeralExtension
{
    private static readonly Dictionary<int, string> ArabicAndRoman = new ()
    {
        { 1000, "M"  },
        { 900,  "CM" },
        { 500,  "D"  },
        { 400,  "CD" },
        { 100,  "C"  },
        { 90,   "XC" },
        { 50,   "L"  },
        { 40,   "XL" },
        { 10,   "X"  },
        { 9,    "IX" },
        { 5,    "V"  },
        { 4,    "IV" },
        { 1,    "I"  },
    };

    public static string ToRoman(this int value)
    {
        int remainder = value;
        StringBuilder output = new StringBuilder();

        foreach (var (arabicNumber, romanNumber) in ArabicAndRoman)
        {
            while(remainder / arabicNumber > 0)
            {
                remainder -= arabicNumber;
                output.Append(romanNumber);
            }
        }
        return output.ToString();
    }
}