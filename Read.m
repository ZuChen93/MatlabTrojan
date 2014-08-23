
b=[];
for i=3:7
    pathName='Data\tek0001.csv';
    sheetName=strcat('B',num2str(i-1),'2:B',num2str(i),'2');
    a=[];
    a=xlsread(pathName,sheetName);
    a=rot90(a);
    b=[b;a];
    
end;

