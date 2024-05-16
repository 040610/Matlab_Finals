function total_sum = sumEvenSubtractOdd(matrix)
    [rows, cols] = size(matrix);
    total_sum = 0;

    for i = 1:rows
        for j = 1:cols
            if mod(matrix(i, j), 2) == 0
                total_sum = total_sum + matrix(i, j);
            else
                total_sum = total_sum - matrix(i, j);
            end
        end
    end
end
