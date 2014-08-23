%sum1=0;
%c=cov(pall);
%[pc,latent]=eig(c);
%[pc,latent,tspuare]=pcacov(c);
temp=0;
con=0;
m=0;
%sum2=sum(latent);
%a=sum2';
sum3=sum(a);
for i=1:10000
if (con<0.95)
    temp=temp+a(i);
    con=temp/sum3;
    m=m+1;
else
    break;
end
end
%pc(:,1:10000-m)=[];
pc(:,1:1000-m)=[];
%******PCA降维得到训练数据和样本数据*************************
%pp=p*pc;
%s1=sample1*pc;
%s2=sample2*pc;
%s11=sam11*pc;
%s12=sam12*pc;
%s13=sam13*pc;
%s14=sam14*pc;
%s15=sam15*pc;
%s21=sam21*pc;
%s22=sam22*pc;
%s23=sam23*pc;
%s24=sam24*pc;
%s25=sam25*pc;
%********************SVM训练数据**********************************************
%samplelabel=[1;1;1;1];
%for i=1:1000
%    samplelabel(i)=1;
%end
%model=svmtrain(patternlabel,pp,'-s 0 -t 2 -c 1 -g 0.1');
%[predictlaable,accuracy]=svmpredict(samplelabel,s1,model);
