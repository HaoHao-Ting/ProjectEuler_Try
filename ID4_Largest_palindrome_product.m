%% Problem Description https://projecteuler.net/problem=4
%% How:
% 1. Get the set {z| z=x*y, x,y∈[100,999], x,y∈Integers}
% 2. Find the larget palindrome from set z.
%% Code

x = meshgrid(100:999);
z = x.*(x');
z = unique(z(:)); % unique(x) returns the same data as in x, but with no repetitions.

for index = numel(z):-1:1
    strNum = num2str(z(index));
    if(strcmp(fliplr(strNum), strNum))
        disp(z(index))
        break;
    end
end