public static class LogAnalysis 
{
    // TODO: define the 'SubstringAfter()' extension method on the `string` type
    public static string SubstringAfter(this string log, string search)
    {
        return log.Substring(log.IndexOf(search)  + search.Length);
    }

    // TODO: define the 'SubstringBetween()' extension method on the `string` type
    public static string SubstringBetween(this string log, string start, string end)
    {
        var startIndex = log.IndexOf(start) + start.Length;
        var endIndex = log.IndexOf(end) - startIndex;
        return log.Substring(startIndex, endIndex);
    }
    
    // TODO: define the 'Message()' extension method on the `string` type
    public static string Message(this string log)
    {
        return log.SubstringAfter(": ");
    }

    // TODO: define the 'LogLevel()' extension method on the `string` type
    public static string LogLevel(this string log)
    {
        return log.SubstringBetween("[", "]");
    }
}