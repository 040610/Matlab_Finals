function gpa = GPA(subjects, credits, scores)
    
    grade_points = zeros(size(scores));
    for i = 1:length(scores)
        if scores(i) >= 90
            grade_points(i) = 4.0;
        elseif scores(i) >= 80
            grade_points(i) = 3.5;
        elseif scores(i) >= 70
            grade_points(i) = 3.0;
        elseif scores(i) >= 60
            grade_points(i) = 2.0;
        elseif scores(i) >= 50
            grade_points(i) = 1.0;
        else
            grade_points(i) = 0.0;
        end
    end
    
    % 각 과목의 학점, 점수를 곱한걸 다 더함.
    total_grade_points = sum(credits .* grade_points);
    
    % 총 학점
    total_credits = sum(credits);
    
    % 총 평점
    gpa = total_grade_points / total_credits;
end
