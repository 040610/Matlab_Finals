function total_sum = movematrixSum(matrix)
    [rows, cols] = size(matrix);
    total_sum = 0;
    
    for i = 1:rows
        for j = 1:cols
            % 짝수면 아래로 이동하고 다음 행의 값을 더합니다.
            if rem(matrix(i, j), 2) == 0 && i < rows
                total_sum = total_sum + matrix(i, j) + matrix(i+1, j);
            % 홀수면 오른쪽으로 이동하고 다음 열의 값을 더합니다.
            elseif rem(matrix(i, j), 2) ~= 0 && j < cols
                total_sum = total_sum + matrix(i, j) + matrix(i, j+1);
            % 마지막 행이거나 열이면 현재 원소만 더합니다.
            else
                total_sum = total_sum + matrix(i, j);
            end
        end
    end
end
