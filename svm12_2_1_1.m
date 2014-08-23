clc;
clear;
% 载入数据
load heart_scale;
data=heart_scale_inst;
label=heart_scale_label;

% 选取前200个数据作为训练集合，后70个数据作为测试集合
ind=200;
traindata=data(1:ind,:);
trainlabel=label(1:ind,:);
testdata=data(ind+1:end,:);
testlabel=label(ind+1:end,:);

% 利用训练集合建立分类模型
model=svmtrain(trainlabel,traindata,'-s 0 -t 2 -c 1.2 -g 2.8 ');

[ptrain,acctrain]=svmpredict(trainlabel,traindata,model);
[ptest,acctest]=svmpredict(testlabel,testdata,model);

