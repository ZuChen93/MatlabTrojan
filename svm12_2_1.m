data=[176,70;180 80;161 45;163 47];
label=[1;1;-1;-1];
model=svmtrain(label,data);

testdata=[190 85];
testdatalabel=1;

[predictlabel,accuracy]=svmpredict(testdatalabel,testdata,model);

% clc
predictlabel

if predictlabel==1
    disp('Man');
else
    disp('Woman');
end
