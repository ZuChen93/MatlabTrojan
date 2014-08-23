function [ b ] = readCSV( file )

    wb=waitbar(0,'Please wait...');
    b=[];
    for i=3:7
        waitbar(i/7,wb,'Loading...');
        %     pathName='Data\tek0001.csv';
        sheetName=strcat('B',num2str(i-1),'2:B',num2str(i),'2');
        %     a=[];
        a=xlsread(file,sheetName);
        a=rot90(a);
        b=[b;a];       
    end
    waitbar(1,wb,'Done!')
    pause(1)
    close(wb)
%     msgbox('Done!');
    save('Data');
    
end


