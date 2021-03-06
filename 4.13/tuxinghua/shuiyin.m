function varargout = shuiyin(varargin)
% SHUIYIN MATLAB code for shuiyin.fig
%      SHUIYIN, by itself, creates a new SHUIYIN or raises the existing
%      singleton*.
%
%      H = SHUIYIN returns the handle to a new SHUIYIN or the handle to
%      the existing singleton*.
%
%      SHUIYIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SHUIYIN.M with the given input arguments.
%
%      SHUIYIN('Property','Value',...) creates a new SHUIYIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before shuiyin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to shuiyin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help shuiyin

% Last Modified by GUIDE v2.5 13-Apr-2018 19:28:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @shuiyin_OpeningFcn, ...
                   'gui_OutputFcn',  @shuiyin_OutputFcn, ...
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


% --- Executes just before shuiyin is made visible.
function shuiyin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to shuiyin (see VARARGIN)

% Choose default command line output for shuiyin
handles.output = hObject;
handles.print = 1; %ˮӡ
handles.getimg = 0;
handles.img = 1; %ͼ��
handles.getprint = 0;
handles.putimg = 0;
handles.Tin = 0;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes shuiyin wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = shuiyin_OutputFcn(hObject, eventdata, handles) 
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
[filename,pathname]=uigetfile({'*.jpg'},'Select a jpg file');
handles.img = im2double(imread(strcat(pathname,filename)));
axes(handles.axes1);
imshow(handles.img);
handles.getimg = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.putimg ==1
    [filename,filepath]=uiputfile({'*.jpg'},'input the filename');
    imwrite(handles.out,strcat(filepath,filename));
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
if handles.putimg ==1
    [filename,filepath]=uiputfile({'*.mat'},'input the filename');
    u = handles.u;
    v = handles.v;
    save(strcat(filepath,filename),'u','v');
end
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (handles.getprint ==1) && (handles.getimg ==1)
    alpha = str2double(get(handles.edit1,'String'));
    [u,A,v] = add(handles.img,handles.print,alpha);
    axes(handles.axes2);
    handles.u = u;
    handles.v = v;
    imshow(A);
    handles.putimg = 1;
    handles.out = A;
    guidata(hObject,handles);
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.mat'},'Select a jpg file');
load(strcat(pathname,filename));
handles.u =u;
handles.v = v;
handles.Tin = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.jpg'},'Select a jpg file');
handles.print = im2double(imread(strcat(pathname,filename)));
axes(handles.axes4);
imshow(handles.print);
handles.getprint = 1;
guidata(hObject,handles);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
if handles.Tin == 1 && handles.getimg == 1
    handles.putimg =1;
    alpha = str2double(get(handles.edit1,'String'));
    handles.out = out(handles.img,handles.u,handles.v,alpha);
    axes(handles.axes2);
    imshow(handles.out);
    guidata(hObject,handles);
end
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
