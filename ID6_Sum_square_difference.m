%% Problem Description https://projecteuler.net/problem=6
%% http://pe-cn.github.io/6
%% How:
% 1. 1^2+2^2+...n^2 = n*(n+1)*(2*n+1)/6
% 2. 1+2+...+n = n*(n+1)/2
%% Code:
n = 100;
answer = (n*(n+1)/2)^2-(n*(n+1)*(2*n+1)/6);
disp(answer)
