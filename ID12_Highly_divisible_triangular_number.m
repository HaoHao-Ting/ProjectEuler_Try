%% Problem Description https://projecteuler.net/problem=12
%% http://pe-cn.github.io/12
%% How:
% 1. 快速分解质因数法：John M. Pollard提到的，复杂度O(n^1/4)
% 当然MATLAB的factor函数自然就能获得质因子
% 2. 约数个数定理 , n=p1^a1 * p2^a2 *...pk^ak
% 那么n的约数共有(a1+1)*(a2+1)*...*(ak+1)

% 那么按照MATLAB的思路就是
% 1. factor获取分解的质因子
% 2. tabulate统计个数
% 3. 约数个数定理获取对应数字的约数个数
% 4. 循环一直到约数个数大于500
%% Code:
answer = 2; 
while(PrimeFactor(answer*(answer+1)/2)<=500)
    answer = answer+1;
end
disp(answer*(answer+1)/2)

function out  = PrimeFactor(input)
    factorList = factor(input);
    factorNum = tabulate(factorList);
    out = prod(factorNum(:,2)+1)-1;
end