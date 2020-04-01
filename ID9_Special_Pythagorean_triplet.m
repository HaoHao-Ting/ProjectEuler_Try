%% Problem Description https://projecteuler.net/problem=9
%% http://pe-cn.github.io/9
%% How:
% Exhaustive Attack method
%% Code:
a = meshgrid(1:998);
b = a';
b(b<=a) = nan;
c = 1000-a-b;
c(c<=b) = nan;
pos=find(a.^2+b.^2==c.^2);
disp(a(pos)*b(pos)*c(pos))