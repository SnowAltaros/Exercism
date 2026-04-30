public static class DifferenceOfSquares
{
    private static IEnumerable<int> Range(int max) => Enumerable.Range(1, max);
    
    public static int CalculateSquareOfSum(int max) => Range(max).Sum() * Range(max).Sum();

    public static int CalculateSumOfSquares(int max) => Range(max).Sum(num => num * num);

    public static int CalculateDifferenceOfSquares(int max) => CalculateSquareOfSum(max) - CalculateSumOfSquares(max);
}