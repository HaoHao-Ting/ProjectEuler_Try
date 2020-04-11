%% Problem Description https://projecteuler.net/problem=31
%% http://pe-cn.github.io/31
%% How:
% 
% https://blog.csdn.net/qq_35546040/article/details/80380731
%% Code:

disp(countWays([1,2,5,10,20,50,100,200],200))

function out = countWays(coins, n)
dp = zeros(1,n+1);
dp(1)=1;
for ii = 1:numel(coins)
    for jj = coins(ii):n
        dp(jj+1)=dp(jj+1)+dp(jj-coins(ii)+1);
    end
    out = dp(end);
end
end