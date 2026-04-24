public static class PythagoreanTriplet
{
    public static IEnumerable<(int a, int b, int c)> TripletsWithSum(int sum)
    {
        List<(int, int, int)> result = new List<(int, int, int)>();

        for (var a = 1; a < sum / 3; a++)
        {
            for (var b = a + 1; b < sum / 2; b++)
            {
                int c = sum - a - b;
                if (c <= b) break;

                if (a * a + b * b == c * c)
                {
                    result.Add((a, b, c));
                }
            }
        }
        
        return result;
    }
}