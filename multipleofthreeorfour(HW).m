function multipleofthreeorfour(num)
    if mod(num, 3) == 0 && mod(num, 4) == 0
        disp([num '는 3과 4의 공배수입니다.'])
    elseif mod(num, 3) == 0
        disp([num '는 3의 배수입니다.'])
    elseif mod(num, 4) == 0
        disp([num '는 4의 배수입니다.'])
    else
        disp([num '는 3 또는 4의 배수가 아닙니다.'])
    end
end
