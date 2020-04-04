%% Problem Description https://projecteuler.net/problem=16
%% http://pe-cn.github.io/16
%% How:

%% Code:
% matlab支持符号运算，直接算2^1000就可直接计算。不行就手动做大数运算
res = sym(2^1000);
% 然后sym转成矩阵
digitsVector = str2num(char(res)');
disp(sum(digitsVector))
