public static class SquareRoot
{
    public static int Root(int number)
    {
        int result = 0;

        while (result * result != number)
        {
            result++;
        }
        
        return result;
    }
}
