public static class SquareRoot
{
    public static int Root(int number)
    {
        double result = 0;
        int i = 1;

        while (result * result != number)
        {
            result = 0.5f * (i + number / i);
            i++;
        }
        
        return (int)result;
    }
}
