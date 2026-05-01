public class SpaceAge
{
    private double age;
    
    public SpaceAge(int seconds)
    {
        age = seconds;
    }

    public double OnEarth() => age /  31557600;

    public double OnMercury() => age / 31557600 / 0.2408467;

    public double OnVenus() => age / 31557600 / 0.61519726;

    public double OnMars() => age / 31557600 / 1.8808158;

    public double OnJupiter() => age / 31557600 / 11.862615;

    public double OnSaturn() => age / 31557600 / 29.447498;

    public double OnUranus() => age / 31557600 / 84.016846;

    public double OnNeptune() => age / 31557600 / 164.79132;
}