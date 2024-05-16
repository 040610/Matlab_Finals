function even_sum = calculateEvenSumInVector(vector)
    even_indices = mod(vector, 2) == 0;
    even_elements = vector(even_indices);
    even_sum = sum(even_elements);
end
