function varargout = UI(varargin)
    % UNTITLED2 MATLAB code for untitled2.fig
    %      UNTITLED2, by itself, creates a new UNTITLED2 or raises the existing
    %      singleton*.
    %
    %      H = UNTITLED2 returns the handle to a new UNTITLED2 or the handle to
    %      the existing singleton*.
    %
    %      UNTITLED2('CALLBACK',hObject,eventData,handles,...) calls the local
    %      function named CALLBACK in UNTITLED2.M with the given input arguments.
    %
    %      UNTITLED2('Property','Value',...) creates a new UNTITLED2 or raises the
    %      existing singleton*.  Starting from the left, property value pairs are
    %      applied to the GUI before untitled2_OpeningFcn gets called.  An
    %      unrecognized property name or invalid value makes property application
    %      stop.  All inputs are passed to untitled2_OpeningFcn via varargin.
    %
    %      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
    %      instance to run (singleton)".
    %
    % See also: GUIDE, GUIDATA, GUIHANDLES

    % Edit the above text to modify the response to help untitled2

    % Last Modified by GUIDE v2.5 22-Aug-2014 22:59:48

    % Begin initialization code - DO NOT EDIT
    gui_Singleton = 1;
    gui_State = struct('gui_Name',       mfilename, ...
                       'gui_Singleton',  gui_Singleton, ...
                       'gui_OpeningFcn', @untitled2_OpeningFcn, ...
                       'gui_OutputFcn',  @untitled2_OutputFcn, ...
                       'gui_LayoutFcn',  [] , ...
                       'gui_Callback',   []);
    if nargin && ischar(varargin{1})
        gui_State.gui_Callback = str2func(varargin{1});
    end

    if nargout
        [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
    else
        gui_mainfcn(gui_State, varargin{:});
    end
    % End initialization code - DO NOT EDIT
    

% --- Executes just before untitled2 is made visible.
function untitled2_OpeningFcn(hObject, eventdata, handles, varargin)
    % This function has no output args, see OutputFcn.
    % hObject    handle to figure
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    % varargin   command line arguments to untitled2 (see VARARGIN)

    % Choose default command line output for untitled2
    handles.output = hObject;

    % Update handles structure
    guidata(hObject, handles);

    % UIWAIT makes untitled2 wait for user response (see UIRESUME)
    % uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled2_OutputFcn(hObject, eventdata, handles) 
    % varargout  cell array for returning output args (see VARARGOUT);
    % hObject    handle to figure
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)

    % Get default command line output from handles structure
    varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
cla;
a=magic(5);
plot(a);
msgbox('OK');
set(handles.uitable1,'data',a);


% --- Executes on button press in bar.
function bar_Callback(hObject, eventdata, handles)

    h=waitbar(0,'wait');
    steps=1000;
    for step=1:steps
        s=strcat(num2str(step/steps*100),'%')
        waitbar(step/steps,h,s)
    end
close(h);

% --- Executes on button press in btnSampleFile.
function btnSampleFile_Callback(hObject, eventdata, handles)
    [fileName,pathName]=uigetfile('*.csv','选择样本文件')
    if fileName~=0
        global pathSampleFile;
        pathSampleFile=strcat(pathName,fileName);
        set(handles.textSampleFile,'String',pathSampleFile);   % 显示已选择文件
%         a00=readCSV(pathSampleFile);
%         set(handles.uitable1,'data',m);       %显示数组
%         save('temp');
    end

% --- Executes on button press in btnTestFile.
function btnTestFile_Callback(hObject, eventdata, handles)  
    [fileName,pathName]=uigetfile('*.csv','选择样本文件')
    if fileName~=0
        global pathTestFile;
        pathTestFile=strcat(pathName,fileName);
        set(handles.textTestFile,'String',pathTestFile);   % 显示已选择文件
%         a00=readCSV(pathTestFile);
%         save('temp');   
    end
    

% --- Executes on button press in btnInit.
function btnInit_Callback(hObject, eventdata, handles)
global pathSampleFile;
global pathTestFile;

a00=readCSV(pathSampleFile);
a01=readCSV(pathTestFile);
save('Data');


% --------------------------------------------------------------------
function menuSVM_Callback(hObject, eventdata, handles)
% hObject    handle to menuSVM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function svmTrain_Callback(hObject, eventdata, handles)
% hObject    handle to svmTrain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[predict,acc]=svm();



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
