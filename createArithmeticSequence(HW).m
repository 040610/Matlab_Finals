function createArithmeticSequence(a, d, n)
    Start = a;
    for i = 2:n
        next_term = a + (i - 1) * d;
        Start = [Start, next_term];
    end
    disp(Start)
end
