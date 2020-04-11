%% Problem Description https://projecteuler.net/problem=30
%% http://pe-cn.github.io/30
%% How:
% 9^5*6=354294;
%% Code:
total = 0;
for ii = 2:354294
    digitalList = str2num(num2str(ii)');
    if(ii == sum(digitalList.^5))
        disp(ii)
        total = total+ii;
    end
end
disp(total)