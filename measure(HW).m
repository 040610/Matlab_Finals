k = input('k값을 입력하세요: ');

matrix = [];

for i = 1:k
    if mod(k, i) == 0
        matrix = [matrix, i];
    end
end

fprintf('%d의 약수: ', k);
disp(matrix);
