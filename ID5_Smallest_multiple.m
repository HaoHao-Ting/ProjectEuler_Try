%% Problem Description https://projecteuler.net/problem=5
%% http://pe-cn.github.io/5
%% How:
% The smallest multiple of 1 to N is f(N)
% f(N) = lcm(N, f(N-1))
%% Code:
format long
answer = 1;
for index = 2:20
    answer = lcm(answer, index);
end
disp(answer)
