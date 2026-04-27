public static class Knapsack
{
    public static int MaximumValue(int maximumWeight, (int weight, int value)[] items)
    {
        var maxItems = new int[maximumWeight + 1];

        foreach (var item in items)
        {
            for (int weight = maximumWeight; weight >= item.weight; weight--)
            {
                int currentItem = maxItems[weight - item.weight] + item.value;
                if (currentItem > maxItems[weight])
                    maxItems[weight] = currentItem;
            }
        }

        return maxItems[maximumWeight];
    }
}
