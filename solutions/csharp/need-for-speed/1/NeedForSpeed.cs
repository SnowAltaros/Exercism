class RemoteControlCar
{
    public int speed;
    public int batteryDrain;
    private int meters;
    public int batteryCapacity = 100;

    public RemoteControlCar(int speed, int batteryDrain)
    {
        this.speed = speed;
        this.batteryDrain = batteryDrain;
    }

    public bool BatteryDrained() => batteryCapacity - batteryDrain < 0;

    public int DistanceDriven() => meters;

    public void Drive()
    {
         if (!BatteryDrained())
        {
            meters += speed;
            batteryCapacity -= batteryDrain;
        }
    }

    public static RemoteControlCar Nitro() => new RemoteControlCar(50, 4);
}

class RaceTrack
{
    private int distance;

    public RaceTrack(int distance)
    {
        this.distance = distance;
    }

    public bool TryFinishTrack(RemoteControlCar car) 
    {
        int carDistance = car.batteryCapacity / car.batteryDrain * car.speed;
        return carDistance >= distance;
    }
}
