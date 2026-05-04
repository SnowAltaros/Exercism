public static class BookStore
{
    private static readonly decimal[] Discounts = { 0, 0, 0.05m, 0.10m, 0.20m, 0.25m };

    public static decimal Total(int[] books)
    {
        var freq = new int[5];
        foreach (var book in books)
            freq[book - 1]++;

        var groupCounts = new int[6]; 
        while (true)
        {
            int distinct = freq.Count(f => f > 0);
            if (distinct == 0) break;

            groupCounts[distinct]++;
            for (int i = 0; i < 5; i++)
                if (freq[i] > 0) freq[i]--;
        }

        int pairs = Math.Min(groupCounts[5], groupCounts[3]);
        groupCounts[5] -= pairs;
        groupCounts[3] -= pairs;
        groupCounts[4] += pairs * 2;

        decimal total = 0;
        for (int size = 1; size <= 5; size++)
            total += groupCounts[size] * size * 8.0m * (1 - Discounts[size]);

        return total;
    }
}