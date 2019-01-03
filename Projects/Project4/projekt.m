function varargout = projekt(varargin)
% PROJEKT MATLAB code for projekt.fig
%      PROJEKT, by itself, creates a new PROJEKT or raises the existing
%      singleton*.
%
%      H = PROJEKT returns the handle to a new PROJEKT or the handle to
%      the existing singleton*.
%
%      PROJEKT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJEKT.M with the given input arguments.
%
%      PROJEKT('Property','Value',...) creates a new PROJEKT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before projekt_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to projekt_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help projekt

% Last Modified by GUIDE v2.5 15-May-2013 15:08:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @projekt_OpeningFcn, ...
                   'gui_OutputFcn',  @projekt_OutputFcn, ...
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


% --- Executes just before projekt is made visible.
function projekt_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to projekt (see VARARGIN)

% Choose default command line output for projekt
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes projekt wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = projekt_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in kompartment.
function kompartment_Callback(hObject, eventdata, handles)
% hObject    handle to kompartment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global kompartment;
local_kompartment = get(hObject,'Value');	
kompartment = local_kompartment;
handles.kompartment = local_kompartment;
guidata(hObject, handles);

for i=1:(local_kompartment^2)
      text{i} = i;
end
set(handles.distribuce,'String',text);

for i=1:(local_kompartment)
      text_2{i} = i;
end
set(handles.mereni,'String',text_2);
set(handles.vstupy,'String',text_2);


% Hints: contents = cellstr(get(hObject,'String')) returns kompartment contents as cell array
%        contents{get(hObject,'Value')} returns selected item from kompartment


% --- Executes during object creation, after setting all properties.
function kompartment_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kompartment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in kompartment.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to kompartment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns kompartment contents as cell array
%        contents{get(hObject,'Value')} returns selected item from kompartment


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kompartment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in distribuce.
function distribuce_Callback(hObject, eventdata, handles)
% hObject    handle to distribuce (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

for i=1:get(hObject,'Value')
   data(i,1) = 0;
   data(i,2) = 0;
   data(i,3) = 0;
end

set(handles.table_distribuce,'Data',data);
set(handles.table_distribuce,'ColumnEditable',true);
 

% Hints: contents = cellstr(get(hObject,'String')) returns distribuce contents as cell array
%        contents{get(hObject,'Value')} returns selected item from distribuce


% --- Executes during object creation, after setting all properties.
function distribuce_CreateFcn(hObject, eventdata, handles)
% hObject    handle to distribuce (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in mereni.
function mereni_Callback(hObject, eventdata, handles)
% hObject    handle to mereni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

for i=1:get(hObject,'Value')
   data(i,1) = 0;
   data(i,2) = 0;
end

set(handles.table_mereni,'Data',data);
set(handles.table_mereni,'ColumnEditable',true);

% Hints: contents = cellstr(get(hObject,'String')) returns mereni contents as cell array
%        contents{get(hObject,'Value')} returns selected item from mereni


% --- Executes during object creation, after setting all properties.
function mereni_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mereni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in vstupy.
function vstupy_Callback(hObject, eventdata, handles)
% hObject    handle to vstupy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

for i=1:get(hObject,'Value')
   data(i,1) = 0;
   data(i,2) = 0;
end

set(handles.table_vstupy,'Data',data);
set(handles.table_vstupy,'ColumnEditable',true);

% Hints: contents = cellstr(get(hObject,'String')) returns vstupy contents as cell array
%        contents{get(hObject,'Value')} returns selected item from vstupy


% --- Executes during object creation, after setting all properties.
function vstupy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vstupy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_Start.
function btn_Start_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global DX DY A_hod U_hod;

M_dist = get(handles.table_distribuce,'Data');
M_mer = get(handles.table_mereni,'Data');
M_vstup = get(handles.table_vstupy,'Data');
A = f_A(handles.kompartment,M_dist);
X = f_XYU(handles.kompartment,'X');
Y = f_XYU(handles.kompartment,'Y');
U = f_XYU(handles.kompartment,'U');
B = f_B(handles.kompartment,M_vstup);
C = f_C(handles.kompartment,M_mer);
A_hod = A_hodnoty(handles.kompartment,M_dist);
U_hod = U_hodnoty(M_vstup);
A
X
Y
U
B
C
A_hod
U_hod
DX =  A*X + B*U
DY =  C*X

% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = str2double(get(handles.time_1,'String')):str2double(get(handles.time_2,'String')):str2double(get(handles.time_3,'String'));
[m,n] = size(t);
for i=1:n
   data(i,1) = 0;
end

set(handles.table_vektor_mereni,'Data',data);
set(handles.table_vektor_mereni,'ColumnEditable',true);


% --- Executes on button press in btn_Param.
function btn_Param_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Param (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global DX DY kompartment A_hod U_hod;
x0=[5, 0.3];
lowerBounds = [4 0];
upperBounds = [5 1]; 
% C = [27 19 10 9 7 6.5 4 3.1 2.6 2.1 1 0.3 0.1];
C = get(handles.table_vektor_mereni,'Data')';
% t= 0:0.5:6;
t = str2double(get(handles.time_1,'String')):str2double(get(handles.time_2,'String')):str2double(get(handles.time_3,'String'));

options = optimset('lsqnonlin');
options = optimset(options ,...
    'GradObj', 'off', ...
    'Hessian', 'on', ...
    'Diagnostics', 'on', ...
    'TolFun', 4e-10, ...
    'MaxIter', 10e5, ...
    'Display', 'iter', ...
    'DiffMaxChange', 1e5, ...
    'DiffMinChange', 1e-5 ...
    );
[x,resnorm] = lsqnonlin(@f,x0, lowerBounds, upperBounds, options, C, t, DX, DY, kompartment, A_hod, U_hod);


function time_1_Callback(hObject, eventdata, handles)
% hObject    handle to time_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time_1 as text
%        str2double(get(hObject,'String')) returns contents of time_1 as a double


% --- Executes during object creation, after setting all properties.
function time_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function time_2_Callback(hObject, eventdata, handles)
% hObject    handle to time_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time_2 as text
%        str2double(get(hObject,'String')) returns contents of time_2 as a double


% --- Executes during object creation, after setting all properties.
function time_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function time_3_Callback(hObject, eventdata, handles)
% hObject    handle to time_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time_3 as text
%        str2double(get(hObject,'String')) returns contents of time_3 as a double


% --- Executes during object creation, after setting all properties.
function time_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
