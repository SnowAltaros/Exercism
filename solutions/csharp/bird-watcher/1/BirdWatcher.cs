class BirdCount
{
    private int[] birdsPerDay;

    public BirdCount(int[] birdsPerDay)
    {
        this.birdsPerDay = birdsPerDay;
    }

    public static int[] LastWeek()
    {
        int[] birdsPerWeek = new int[] { 0, 2, 5, 3, 7, 8, 4 };
        return birdsPerWeek;
    }

    public int Today() => birdsPerDay[birdsPerDay.Length - 1];

    public void IncrementTodaysCount()
    {
        birdsPerDay[birdsPerDay.Length - 1]++;
    }

    public bool HasDayWithoutBirds()
    {
        foreach (int number in birdsPerDay)
        {
            if (number == 0)
            {
                return true;
            }
        }
        return false;
    }

    public int CountForFirstDays(int numberOfDays)
    {
        int countsForDays = 0;

        for (int i = 0; i < numberOfDays; i++)
        {
            countsForDays += birdsPerDay[i];
        }

        return countsForDays;
    }

    public int BusyDays()
    {
        int numberOfDays = 0;

        foreach (int number in birdsPerDay)
        {
            if (number >= 5)
            {
                numberOfDays++;
            }
        }

        return numberOfDays;
    }
}
