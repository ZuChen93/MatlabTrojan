    axes(handles.axesB);
    cla reset;
    view(2);
    reset(gca);
    plot(TestL,'o');    %%%%%
    hold on;
    plot(pretest,'r*');     %%%%%
    xlabel('���Լ�����');
    ylabel('����ǩ');
    legend('ʵ�ʲ��Լ�����','Ԥ2����Լ�����');
    title('���Լ���ʵ�ʷ����Ԥ�����ͼ');
    grid on;