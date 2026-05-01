static class Badge
{
    public static string Print(int? id, string name, string? department)
    {
        var idString = id != null ? $"[{id.ToString()}] - " : "";
        var departmentCheck = department != null ? department.ToUpper() : "OWNER";
        return $"{idString}{name} - {departmentCheck}";
    }
}