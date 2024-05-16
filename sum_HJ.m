function total = sum_HJ(matrix)
    [rows, cols] = size(matrix);
    total = 0;
    
    row = 1;
    col = 1;
    
    while row <= rows && col <= cols
        total = total + matrix(row, col);
        if mod(matrix(row, col), 2) == 0
            row = row + 1;
        else
            col = col + 1;
        end
    end
end