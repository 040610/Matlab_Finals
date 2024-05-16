function myfunction(mat)
    heights = mat(:);
    
    k = input('오차를 입력하시오: ');

    average_height = mean(heights);

    within_range_count = sum(abs(heights - average_height) <= k);

    fprintf('키 데이터의 평균은: %.3f\n', average_height);
    fprintf('평균 +- 사이에 있는 명수: %d\n', within_range_count);
end
