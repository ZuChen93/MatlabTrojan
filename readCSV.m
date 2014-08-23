function data=readCSV(fileName)
% fileName:预处理文件路径

    wb=waitbar(0,'Reading File...');
% 读csv文件
    dataBefore=csvread(fileName,21,1,[21,1,21+999600-1,1]);

    waitbar(0.5,wb,'Rebuilding Data...');   pause(1);
	
% 重组为1666*600矩阵    
    data=zeros(1666,600);       % 预定义空间
    for i=1:1666
        if i==1
            data(1,:)=dataBefore(1:600,:);
        else
            data(i,:)=dataBefore((i-1)*600+1:i*600,:);
        end
    end
    waitbar(1,wb,'Done!');  pause(1);
    close(wb);
end