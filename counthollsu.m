function count = counthollsu(matrix)
    [rows, ~] = size(matrix);
    count = zeros(rows, 1);
    
    for i = 1:rows
        count(i) = sum(mod(matrix(i,:), 2) == 1);
    end
end