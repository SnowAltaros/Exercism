public enum StopwatchState
{
    Ready,
    Running,
    Stopped
}

public class SplitSecondStopwatch(TimeProvider time)
{
    private long startTimestamp;
    private TimeSpan currentLap;
    private List<TimeSpan> laps = new();
    
    public StopwatchState State { get; private set; }
    public TimeSpan CurrentLap => State == StopwatchState.Running ? currentLap + time.GetElapsedTime(startTimestamp) : currentLap;
    public TimeSpan Total => PreviousLaps.Aggregate(CurrentLap, (current, lap) => current + lap);
    public IReadOnlyCollection<TimeSpan> PreviousLaps => laps;

    public void Start()
    {
        if (State == StopwatchState.Ready || State == StopwatchState.Stopped)
        {
            State = StopwatchState.Running;
            startTimestamp = time.GetTimestamp();
        }
        else 
        {
            throw new InvalidOperationException();
        }
    }

    public void Stop()
    {
        if (State == StopwatchState.Running)
        {
            currentLap += time.GetElapsedTime(startTimestamp);
            State = StopwatchState.Stopped;
        }
        else
        {
            throw new InvalidOperationException();
        }
    }

    public void Reset()
    {
        if (State == StopwatchState.Stopped)
        {
            State = StopwatchState.Ready;
            currentLap = TimeSpan.Zero;
            laps = new ();
        }
        else 
        {
            throw new InvalidOperationException();
        }
        
    }

    public void Lap()
    {
        if (State == StopwatchState.Running)
        {
            var lap = CurrentLap;
            laps.Add(lap);
            currentLap = TimeSpan.Zero;
            startTimestamp = time.GetTimestamp();
        }
        else 
        {
            throw new InvalidOperationException();
        }
    }
}
