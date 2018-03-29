function varargout = caui(varargin)
% CAUI MATLAB code for caui.fig
%      CAUI, by itself, creates a new CAUI or raises the existing
%      singleton*.
%
%      H = CAUI returns the handle to a new CAUI or the handle to
%      the existing singleton*.
%
%      CAUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CAUI.M with the given input arguments.
%
%      CAUI('Property','Value',...) creates a new CAUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before caui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to caui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help caui

% Last Modified by GUIDE v2.5 29-Mar-2018 14:23:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @caui_OpeningFcn, ...
                   'gui_OutputFcn',  @caui_OutputFcn, ...
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


% --- Executes just before caui is made visible.
function caui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to caui (see VARARGIN)

% Choose default command line output for caui
handles.output = hObject;
% 声明
handles.outnum = '0';
handles.equation = '';
handles.iftype = 0;
handles.ifequal = 0;



% Update handles structure
guidata(hObject, handles);

% UIWAIT makes caui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = caui_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 初始化
handles.outnum = '0';
handles.equation = '';
set(handles.text2,'String','0');
set(handles.text3,'String','C');
guidata(hObject,handles);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Operator(hObject,handles,'/')


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.ifequal == 1
    handles.ifequal = 0;
    handles.equation = '';
end
handles.outnum = InputNum(7,handles.outnum);
RefreshScreen(handles,handles.outnum);
handles.iftype = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.ifequal == 1
    handles.ifequal = 0;
    handles.equation = '';
end
handles.outnum = InputNum(8,handles.outnum);
RefreshScreen(handles,handles.outnum);
handles.iftype = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.ifequal == 1
    handles.ifequal = 0;
    handles.equation = '';
end
handles.outnum = InputNum(9,handles.outnum);
RefreshScreen(handles,handles.outnum);
handles.iftype = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Operator(hObject,handles,'*')

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.ifequal == 1
    handles.ifequal = 0;
    handles.equation = '';
end
handles.outnum = InputNum(4,handles.outnum);
RefreshScreen(handles,handles.outnum);
handles.iftype = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.ifequal == 1
    handles.ifequal = 0;
    handles.equation = '';
end
handles.outnum = InputNum(5,handles.outnum);
RefreshScreen(handles,handles.outnum);
handles.iftype = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.ifequal == 1
    handles.ifequal = 0;
    handles.equation = '';
end
handles.outnum = InputNum(6,handles.outnum);
RefreshScreen(handles,handles.outnum);
handles.iftype = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Operator(hObject,handles,'-');

% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.ifequal == 1
    handles.ifequal = 0;
    handles.equation = '';
end
handles.outnum = InputNum(1,handles.outnum);
RefreshScreen(handles,handles.outnum);
handles.iftype = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.ifequal == 1
    handles.ifequal = 0;
    handles.equation = '';
end
handles.outnum = InputNum(2,handles.outnum);
RefreshScreen(handles,handles.outnum);
handles.iftype = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.ifequal == 1
    handles.ifequal = 0;
    handles.equation = '';
end
handles.outnum = InputNum(3,handles.outnum);
RefreshScreen(handles,handles.outnum);
handles.iftype = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 加号
Operator(hObject,handles,'+');

% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.ifequal == 1
    handles.ifequal = 0;
    handles.equation = '';
end
handles.outnum = InputNum(0,handles.outnum);
RefreshScreen(handles,handles.outnum);
handles.iftype = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.outnum = InputOperator('.',handles.outnum);
guidata(hObject, handles);
RefreshScreen(handles,handles.outnum);


% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isempty(handles.equation) == 1
    handles.equation = strcat(InputOperator('.0',handles.outnum));
    handles.outnum = '0';
    RefreshScreen(handles,handles.equation);
else
    if handles.iftype == 1
    handles.equation = strcat('t = ',handles.equation,handles.outnum,';');
    eval(handles.equation);
    handles.equation = num2str(t);
    handles.outnum = '0';
    RefreshScreen(handles,handles.equation);
    handles.iftype = 0;
    end
handles.ifequal = 1;
end
set(handles.text3,'String','=');
guidata(hObject,handles);

% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function RefreshScreen(handles,text)
    set(handles.text2,'String',text);
    
function Operator(hObject,handles,op)
if isempty(handles.equation) == 1
    handles.equation = strcat(InputOperator('.0',handles.outnum),op);
    handles.outnum = '0';

else
    if handles.iftype == 1
        handles.equation = strcat('t = ',handles.equation,handles.outnum,';');
        eval(handles.equation);
        handles.equation = num2str(t);
        handles.outnum = '0';
        RefreshScreen(handles,handles.equation);
        handles.equation = strcat(handles.equation,op);
        handles.iftype = 0;
        
    elseif handles.equation(end:end) == '+' || handles.equation(end:end) == '-' || handles.equation(end:end) == '*' || handles.equation(end:end) == '/' 
        handles.equation(end:end) = op;
    else
        if isempty(strfind(handles.equation,op)) == 1
        handles.equation = strcat(handles.equation,op);
        end
    end
end
set(handles.text3,'String',op);
handles.ifequal = 0;
guidata(hObject,handles);
