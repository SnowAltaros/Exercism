public class SpiralMatrix
{
    public static int[,] GetMatrix(int size)
    {
        var matrix = new int[size, size];
        
        if (size == 0) return matrix;

        int num = 1;
        
        int top = 0;
        int bottom = matrix.GetLength(0) - 1;
        int left = 0;
        int right = matrix.GetLength(1) - 1;

        while (top <= bottom && left <= right)
        {
            for (var col = left; col <= right; col++)
            {
                matrix[top, col] = num;
                num++;
            }
            top++;

            for (var row = top; row <= bottom; row++)
            {
                matrix[row, right] = num;
                num++;
            }
            right--;

            if (top <= bottom)
            {
                for (var col = right; col >= left; col--)
                {
                    matrix[bottom, col] = num;
                    num++;
                }
                bottom--;
            }

            if (left <= right)
            {
                for (var row = bottom; row >= top; row--)
                {
                    matrix[row, left] = num;
                    num++;
                }
                left++;
            }
        }
        
        return matrix;
    }
}
