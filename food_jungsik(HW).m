food_names = {'짬뽕', '낙곱새', '해물탕', '제육볶음'};
prices = [12000, 8000, 15000, 10000];

manun_foods = {};

for i = 1:length(food_names)
    if prices(i) >= 10000
        manun_foods = [manun_foods, food_names{i}];
    end
end

disp('만원 이상의 음식:');
disp(manun_foods);
