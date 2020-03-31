%% Problem Description https://projecteuler.net/problem=1
%% How:
% 1000 is very small, so we can enumerate all the numbers.
% Ps: Feasible set is 1-999
%% Code
numlist = 1:999;
% the multiples of 3;
list1 = numlist(mod(numlist,3)==0);
% the multiples of 5;
list2 = numlist(mod(numlist,5)==0);
% the union of two sets is the multiples of 3,5
list3 = union(list1,list2);
% the answer is the sum of lsit3
disp(sum(list3));
