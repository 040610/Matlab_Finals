function max_number = customMax(a)
    max_number = a(1);
    
    for i = 2:length(a)
        if a(i) > max_number
            max_number = a(i);
        end
    end
end
