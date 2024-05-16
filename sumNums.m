function sum_of_digits = sumNums(n)
    sum_of_digits = 0;
    
    while n > 0
        digit = model(n, 10);
        sum_of_digits = sum_of_digits + digit;
        n = (n - digit) / 10;
    end
end