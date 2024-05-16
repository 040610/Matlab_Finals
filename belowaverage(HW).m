data = input('데이터를 입력하세요! (행렬로 입력해주세요) : ');

average = mean(data);

sum_below_average = 0;

for i = 1:length(data)
    if data(i) <= average
        sum_below_average = sum_below_average + data(i);
    end
end

fprintf('평균 이하의 숫자들의 합: %d\n', sum_below_average);
