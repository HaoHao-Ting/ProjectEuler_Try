%% Problem Description https://projecteuler.net/problem=17
%% http://pe-cn.github.io/17
%% How:
% TODO: 怎么实现的
%% Code:
clear;
numLetter = zeros(1,1000);
numLetter(1:20) = [3,3,5,4,4,3,5,5,4,3,6,6,8,8,7,7,9,8,8,6];
numLetter(30:10:90) = [6,5,5,5,7,6,6];
numLetter(100:100:900) = numLetter(1:9)+7;
numLetter(1000) = 11;
for index=1:numel(numLetter)
    if(numLetter(index)==0)
        if index>100
            numLetter(index) = numLetter(fix(index/100)*100)+3+numLetter(mod(index,100));
        else
            numLetter(index) = numLetter(fix(index/10)*10)+numLetter(mod(index,10));
        end
    end
end
disp(sum(numLetter))
