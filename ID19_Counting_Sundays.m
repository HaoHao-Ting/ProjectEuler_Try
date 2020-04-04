%% Problem Description https://projecteuler.net/problem=19
%% http://pe-cn.github.io/19
%% How:
% 只需要逐月加上天数，然后看是否能被7整除，能被7整除则说明当天恰好是周日

%% Code:
dayMark = 1;% 1990,1,1 is Monday
dayMark = mod(dayMark+365,7); % 1991,1,1
count = 0;
for year = 1901:2000
    if(isLeapYear(year))
        monthList = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    else
        monthList = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    end
    for mon = 1:12
        dayMark = mod(dayMark+monthList(mon), 7);
        if(dayMark==0)
            count = count+1;
        end
    end
end
disp(count);
%% the fonction check leap year
function out = isLeapYear(year)
if((mod(year,4)==0 && mod(year,100)~=0) || mod(year,400)==0)
    out = true;
else
    out = false;
end
end