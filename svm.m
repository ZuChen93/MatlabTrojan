function [predictlabel,accuracy] = svm( )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
load('Data.mat');
clc;
ind=1000;
max=1666;
% 训练集 1-1000
train00=a00(1:ind,:);
train01=a01(1:ind,:);
% 测试集 1001-1666
test00=a00(ind+1:end,:);
test01=a01(ind+1:end,:);
% 组合训练集
trainData=[train00(1:end,:);train01(1:end,:)];
% 组合测试集
testData=[test00(1:end,:);test01(1:end,:)];
% 生成标签
trainLabel=zeros(ind,1);        % 前1000为0
% trainLabel= -ones(ind,1);       % 前1000为-1
trainLabel(ind+1:ind*2,:)=ones(ind,1);  % 1001-2000为1

testLabel=zeros(666,1);
% testLabel=-ones(666,1);
testLabel(667:1332,:)=ones(666,1);

model=svmtrain(trainLabel,trainData,'-s 0,-t 1 -c 1 -g 0.01667 -h 0');
assignin('base','model',model);		% 将model存入当前工作空间中
[predictlabel,accuracy]=svmpredict(testLabel,testData,model);
% 咋输出结果？？？？？？？？？？？？？？？

save('Data.mat');
end

