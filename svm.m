function [predictlabel,accuracy] = svm( )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
load('Data.mat');
clc;
ind=1000;
max=1666;
% ѵ���� 1-1000
train00=a00(1:ind,:);
train01=a01(1:ind,:);
% ���Լ� 1001-1666
test00=a00(ind+1:end,:);
test01=a01(ind+1:end,:);
% ���ѵ����
trainData=[train00(1:end,:);train01(1:end,:)];
% ��ϲ��Լ�
testData=[test00(1:end,:);test01(1:end,:)];
% ���ɱ�ǩ
trainLabel=zeros(ind,1);        % ǰ1000Ϊ0
% trainLabel= -ones(ind,1);       % ǰ1000Ϊ-1
trainLabel(ind+1:ind*2,:)=ones(ind,1);  % 1001-2000Ϊ1

testLabel=zeros(666,1);
% testLabel=-ones(666,1);
testLabel(667:1332,:)=ones(666,1);

model=svmtrain(trainLabel,trainData,'-s 0,-t 1 -c 1 -g 0.01667 -h 0');
assignin('base','model',model);		% ��model���뵱ǰ�����ռ���
[predictlabel,accuracy]=svmpredict(testLabel,testData,model);
% զ������������������������������������

save('Data.mat');
end

