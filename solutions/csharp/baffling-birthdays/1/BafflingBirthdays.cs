public static class BafflingBirthdays
{
    public static DateOnly[] RandomBirthdates(int numberOfBirthdays)
    {
        List<DateOnly> dates = new List<DateOnly>();

        for (var i = 0; i < numberOfBirthdays; i++)
        {
            int randomDay = Random.Shared.Next(1, 366);

            DateOnly randomDate = new DateOnly(2001, 1, 1).AddDays(randomDay - 1);
            dates.Add(randomDate);
        }
        
        return dates.ToArray();
    }

    public static bool SharedBirthday(DateOnly[] birthdays) =>
         birthdays.Select(d => (d.Day, d.Month)).Distinct().Count() != birthdays.Length;
    
    public static double EstimatedProbabilityOfSharedBirthday(int numberOfBirthdays)
    {
        int simulations = 1000;
        int matches = 0;

        for (var i = 0; i < simulations; i++)
        {
            var dates = RandomBirthdates(numberOfBirthdays);

            var hasDublicateDates = SharedBirthday(dates);

            if (hasDublicateDates) matches++;
        }

        return (double)matches / simulations * 100; 
    }
}
