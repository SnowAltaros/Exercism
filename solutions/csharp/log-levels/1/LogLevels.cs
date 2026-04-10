static class LogLine
{
    public static string Message(string logLine)
    {
        int colonIndex = logLine.IndexOf(":");
        string message = logLine.Remove(0, colonIndex + 1);
        return message.Trim();
    }

    public static string LogLevel(string logLine)
    {
        int colonIndex = logLine.IndexOf(":");
        string level = logLine.Remove(colonIndex);
        string result = level.Replace("[", "").Replace("]", "");
        
        return result.ToLower().Trim();
    }

    public static string Reformat(string logLine)
    {
        string message = Message(logLine);
        string level = LogLevel(logLine);

        string result = $"{message} ({level})";
        return result;
    }
}
