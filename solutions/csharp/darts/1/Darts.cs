public static class Darts
{
    public static int Score(double x, double y)
    {
        var distance = Math.Abs(Math.Sqrt(x * x + y * y));

        if (distance <= 10 && distance > 5) return 1;
        if (distance <= 5 && distance > 1) return 5;
        if (distance <= 1) return 10;
        
        return 0;
    }
}
