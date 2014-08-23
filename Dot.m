    axes(handles.axesB);
    cla reset;
    view(2);
    reset(gca);
    plot(TestL,'o');    %%%%%
    hold on;
    plot(pretest,'r*');     %%%%%
    xlabel('测试集样本');
    ylabel('类别标签');
    legend('实际测试集分类','预2测测试集分类');
    title('测试集的实际分类和预测分类图');
    grid on;