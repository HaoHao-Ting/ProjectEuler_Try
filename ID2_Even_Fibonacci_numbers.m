%% Problem Description https://projecteuler.net/problem=2
%% How:
% 4000000 is very small, so we can enumerate all the numbers by general term formula.
% Fibonacci(n) = 1/sqrt(5)*(((1+sqrt(5))/2)^n-((1-sqrt(5))/2)^n)
% fibonacci(n) ~ 0.618^(-n)
%% Code
% what 'num' makes fibonacci(num) > 4000000?
num = fix(log(4000000)/log(1/0.618)) + 3;
numlist = 1:num;
% general term formula
fiblist = 1 / sqrt(5) * (((1 + sqrt(5)) / 2).^numlist - ((1 - sqrt(5)) / 2).^numlist);
% float->int, we can also use 'syms' to calculate the fionacci(n) 
fiblist = round(fiblist);
% choose the sequence whose values don't exceed four million and is even-valued.
fiblist = fiblist(fiblist < 4000000 & mod(fiblist, 2) == 0);
% the answer is the sum of fiblist
disp(sum(fiblist));
