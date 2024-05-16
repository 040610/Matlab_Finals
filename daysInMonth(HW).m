function dayMonth = daysInMonth(a)

Monthdays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

for i = 1 : 12
    if i == a
        dayMonth = Monthdays(i);
    end
end
