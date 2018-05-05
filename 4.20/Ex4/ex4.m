function varargout = ex4(varargin)
% EX4 MATLAB code for ex4.fig
%      EX4, by itself, creates a new EX4 or raises the existing
%      singleton*.
%
%      H = EX4 returns the handle to a new EX4 or the handle to
%      the existing singleton*.
%
%      EX4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EX4.M with the given input arguments.
%
%      EX4('Property','Value',...) creates a new EX4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ex4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ex4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ex4

% Last Modified by GUIDE v2.5 27-Apr-2018 16:29:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ex4_OpeningFcn, ...
                   'gui_OutputFcn',  @ex4_OutputFcn, ...
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


% --- Executes just before ex4 is made visible.
function ex4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ex4 (see VARARGIN)

% Choose default command line output for ex4
handles.output = hObject;
handles.drawline = 1;
handles.lin{2} = [];
set(handles.pushbutton1,'String','第一个图画完后点此处');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ex4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ex4_OutputFcn(hObject, eventdata, handles) 
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
if handles.drawline ~=3
    [a,~] = size(handles.lin{handles.drawline});
end
if handles.drawline == 1 && a>2
    handles.drawline = 2;
    set(handles.pushbutton1,'String','第二个图画完后点此处');
elseif handles.drawline == 2 && a>2
    points = handles.lin{1};
    points(a+1,:) = points(1,:);
    axes(handles.axes1);
    line(points(:,1),points(:,2));
    set(handles.axes1,'Xlim',[0 1]);
    set(handles.axes1,'Ylim',[0 1]);  
    
    [a,~] = size(handles.lin{2})
    points = handles.lin{handles.drawline};
    points(a+1,:) = points(1,:);
    axes(handles.axes1);
    line(points(:,1),points(:,2),'Color','r');
    set(handles.axes1,'Xlim',[0 1]);
    set(handles.axes1,'Ylim',[0 1]);
    handles.drawline = 3;
    set(handles.pushbutton1,'String','计算面积');
    elseif handles.drawline ==3 
        k = 100000;
        s = 0;
        for i =1:k
            poi = [rand() rand()];
            s = s + ifinarea(poi,handles.lin{1}) * ifinarea(poi,handles.lin{2});
        end
        set(handles.edit1,'String',num2str(s/k));
end 
guidata(hObject, handles);

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


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.drawline <=2
currPt = get(gca, 'CurrentPoint');
[p,y] = size(handles.lin{handles.drawline});
if y < 2
    p = 0;
end
handles.lin{handles.drawline}(p+1,:) = currPt(1,1:2);
end
guidata(hObject,handles);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton1.
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
