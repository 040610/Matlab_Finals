training_people = input('훈련을 참여한 인원 수를 입력하세요: ');

if training_people >= 5
    balls_needed = training_people * 2;
else
    balls_needed = 50;
end

fprintf('훈련을 진행할 때 필요한 공의 개수는 %d개입니다.\n', balls_needed);
