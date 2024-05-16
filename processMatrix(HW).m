function results = processMatrix(matrix)
    [rows, cols] = size(matrix);
    results = zeros(rows, 1);

    for i = 1:rows
        sum = 0;
        for j = 1:cols
            if matrix(i, j) < 5
                sum = sum - 1;
            elseif matrix(i, j) > 5
                sum = sum + 1;
            else matrix(i, j) == 5
                sum = sum / 2;
            end
        end
        results(i) = sum;
    end
end
