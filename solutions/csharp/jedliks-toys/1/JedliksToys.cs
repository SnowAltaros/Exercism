class RemoteControlCar
{
    private int _distance = 0;
    private int _percentage = 100;
    
    public static RemoteControlCar Buy() => new RemoteControlCar();

    public string DistanceDisplay()
    {
        return $"Driven {_distance} meters";
    }

    public string BatteryDisplay()
    {
        if (_percentage == 0)
        {
            return $"Battery empty";
        }
        
        return $"Battery at {_percentage}%";
    }

    public void Drive()
    {
        if (_percentage != 0)
        {
            _distance += 20;
            _percentage -= 1;
        }
    }
}
