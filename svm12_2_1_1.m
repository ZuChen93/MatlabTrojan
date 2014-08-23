clc;
clear;
% ��������
load heart_scale;
data=heart_scale_inst;
label=heart_scale_label;

% ѡȡǰ200��������Ϊѵ�����ϣ���70��������Ϊ���Լ���
ind=200;
traindata=data(1:ind,:);
trainlabel=label(1:ind,:);
testdata=data(ind+1:end,:);
testlabel=label(ind+1:end,:);

% ����ѵ�����Ͻ�������ģ��
model=svmtrain(trainlabel,traindata,'-s 0 -t 2 -c 1.2 -g 2.8 ');

[ptrain,acctrain]=svmpredict(trainlabel,traindata,model);
[ptest,acctest]=svmpredict(testlabel,testdata,model);

