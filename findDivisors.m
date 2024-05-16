function divisors = findDivisors(a)
    divisors = [];
    
    for i = 1:a
        if rem(a, i) == 0
            divisors = [divisors, i];
        end
    end
end


function sum = sumarray(n)
    sum = 0;
    for i = 1:n
        sum = sum + i;
    end
end
