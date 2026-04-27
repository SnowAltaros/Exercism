public static class SaddlePoints
{
    public static IEnumerable<(int, int)> Calculate(int[,] matrix)
    {
        var result = new List<(int, int)>();

        if (matrix.Length == 0) return result;

        int rows = matrix.GetLength(0);
        int cols = matrix.GetLength(1);

        for (int i = 0; i < rows; i++)
        {
            int rowMax = Enumerable.Range(0, cols).Max(j => matrix[i, j]);
            
            var maxCols = Enumerable.Range(0, cols).Where(j => matrix[i, j] == rowMax);
            
            foreach (int colIdx in maxCols)
            {
                int colMin = Enumerable.Range(0, rows).Min(k => matrix[k, colIdx]);

                if (rowMax == colMin)
                {
                    result.Add((i + 1, colIdx + 1));
                }
            }
        }

        return result;
    }
}