public static class SumOfMultiples
{
    static IEnumerable<int> Range(this int max) => Enumerable.Range(0, max);
    
    public static int Sum(IEnumerable<int> multiples, int max)
    {
        var allMultiples = multiples.SelectMany(num => max.Range(),
            (num, num1) => num * num1)
            .Where(product => product < max)
            .Distinct();
        
        return allMultiples.Sum();
    }
}