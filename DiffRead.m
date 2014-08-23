% filename='Data\tek0000.csv'
% tic
% a=xlsread(filename,'B22:B999621');
% toc
%
% tic
% b=csvread(filename,21,1,[21,1,21+999600-1,1]);
% toc
tic
B=zeros(1666,600);
for i=1:1666
    if i==1
        B(1,:)=b(1:600,:);
    else
        B(i,:)=b((i-1)*600+1:i*600,:);
    end
end
toc