x=(-1:0.1:1)';
y=x.^2;

model =svmtrain(y,x,'-s 3 -t 2 -c 2.2 -g 2.8 -p 0.01');

[py,mse]=svmpredict(y,x,model);

scrsz=get(0,'ScreenSize');
figure('Position',[scrsz(3)*1/4 scrsz(4)*1/6 scrsz(3)*4/5 scrsz(4)]*3/4);
plot(x,y,'o');
hold on;        %当前轴及图形保持而不被刷新，准备接受此后将绘制
plot(x,py,'r*');
legend('原始数据','回归数据');
grid on;

testx=1.1;
display('真实数据')
testy=-testx.^2;

[ptesty,tmse]=svmpredict(testy,testx,model);
display('预测数据')
ptesty