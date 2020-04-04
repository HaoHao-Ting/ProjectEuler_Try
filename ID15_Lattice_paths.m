%% Problem Description https://projecteuler.net/problem=15
%% http://pe-cn.github.io/15
%% How:
% 动态规划题目
% 对于(i,j)可以从(i-1,j)和(i,j-1)两个路径走到。所以依次类推
% stepNum(ii,jj) = stepNum(ii-1,jj)+stepNum(ii,jj-1)
%% Code:
clearvars;
pointNum = 20+1;
stepNum = int64(zeros(pointNum));
stepNum(1,:)=1; stepNum(:,1)=1;
for ii = 2:pointNum
    for jj = 2:pointNum
        stepNum(ii,jj) = stepNum(ii-1,jj)+stepNum(ii,jj-1);
    end
end
disp(stepNum(end))