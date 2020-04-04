%% Problem Description https://projecteuler.net/problem=14
%% http://pe-cn.github.io/14
%% How:
% 1.暴力穷举即可，然后存储已经算出来的数据，下次计算用到的时候直接用
% 2.当然，还一个方法，每次计算序列后边出现的序列全部去掉，应为他们必然要短。就不用计算他们了。
% 3.迭代版本会更快。递归因为MATLAB不能传引用调用。所以无法添加后边的位置。导致用很多数据进行了重复计算。
%% Code:
% TODO  A faster solution
clear;
seqNum = 1e6;
seq = int64(zeros(1, seqNum));
seq(1, 2.^(0:fix(log2(seqNum)))) = (0:fix(log2(seqNum)))+1;
for index = 1:seqNum
    if(seq(1,index)==0)
        seq(1,index) = getSqeLength(seq, index);
    end
end
[~,pos]=max(seq);
disp(pos);

% -------------------------------------------
function out = getSqeLength(seq, index)
% disp(index);
if (index<=1e6 && seq(1,index)~=0)
    out = seq(1,index);
    return;
else
    if(mod(index,2)==0)
        out = 1+getSqeLength(seq, index/2);
        return;
    else
        out = 1+getSqeLength(seq, index*3+1);
        return;
    end
end
end
