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

% Last Modified by GUIDE v2.5 03-May-2013 18:30:59

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


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)

a=get(handles.popupmenu1,'Value');

switch a
    case 1
        set(handles.k11_txt,'Enable','on');
        set(handles.k12_txt,'Enable','off');
        set(handles.k13_txt,'Enable','off');
        set(handles.k21_txt,'Enable','off');
        set(handles.k22_txt,'Enable','off');
        set(handles.k23_txt,'Enable','off');
        set(handles.k31_txt,'Enable','off');
        set(handles.k32_txt,'Enable','off');
        set(handles.k34_txt,'Enable','off');
        set(handles.k44_txt,'Enable','off');
        
    case 2
        set(handles.k11_txt,'Enable','on');
        set(handles.k12_txt,'Enable','on');
        set(handles.k13_txt,'Enable','off');
        set(handles.k21_txt,'Enable','on');
        set(handles.k22_txt,'Enable','off');
        set(handles.k23_txt,'Enable','off');
        set(handles.k31_txt,'Enable','off');
        set(handles.k32_txt,'Enable','off');
        set(handles.k34_txt,'Enable','off');
        set(handles.k44_txt,'Enable','off');
    case 3
        set(handles.k11_txt,'Enable','off');
        set(handles.k12_txt,'Enable','on');
        set(handles.k13_txt,'Enable','on');
        set(handles.k21_txt,'Enable','on');
        set(handles.k22_txt,'Enable','on');
        set(handles.k23_txt,'Enable','off');
        set(handles.k31_txt,'Enable','on');
        set(handles.k32_txt,'Enable','off');
        set(handles.k34_txt,'Enable','off');
        set(handles.k44_txt,'Enable','off');
        
    case 4
        set(handles.k11_txt,'Enable','off');
        set(handles.k12_txt,'Enable','on');
        set(handles.k13_txt,'Enable','off');
        set(handles.k21_txt,'Enable','on');
        set(handles.k22_txt,'Enable','off');
        set(handles.k23_txt,'Enable','on');
        set(handles.k31_txt,'Enable','off');
        set(handles.k32_txt,'Enable','on');
        set(handles.k34_txt,'Enable','on');
        set(handles.k44_txt,'Enable','on');
        
        
        
end
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)


a=get(handles.popupmenu1,'Value');

u1=str2double(get(handles.u1_txt,'String'));
k11=str2double(get(handles.k11_txt,'String'));
k12=str2double(get(handles.k12_txt,'String'));
k13=str2double(get(handles.k13_txt,'String'));
k21=str2double(get(handles.k21_txt,'String'));
k22=str2double(get(handles.k22_txt,'String'));
k23=str2double(get(handles.k23_txt,'String'));
k31=str2double(get(handles.k31_txt,'String'));
k32=str2double(get(handles.k32_txt,'String'));
k34=str2double(get(handles.k32_txt,'String'));
k44=str2double(get(handles.k44_txt,'String'));
t=str2double(get(handles.cas_txt,'String'));

x1=[u1,k11];
x2=[u1,k11,k12,k21];
x3=[u1,k12,k21,k22,k31,k13];
x4=[u1,k12,k21,k32,k23,k44,k34];
if((a<1) || (a>4))
    a=1;
end


switch a
    case 1
      jednokomp(x1,t);
    case 2
      dvoukomp(x2,t);
     
    case 3
      trikomp(x3,t);
     
    case 4
      ctyrkomp(x4,t);
      
      
        
end


% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function k12_txt_Callback(hObject, eventdata, handles)
% hObject    handle to k12_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k12_txt as text
%        str2double(get(hObject,'String')) returns contents of k12_txt as a double


% --- Executes during object creation, after setting all properties.
function k12_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k12_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function u1_txt_Callback(hObject, eventdata, handles)
% hObject    handle to u1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of u1_txt as text
%        str2double(get(hObject,'String')) returns contents of u1_txt as a double


% --- Executes during object creation, after setting all properties.
function u1_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to u1_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k21_txt_Callback(hObject, eventdata, handles)
% hObject    handle to k21_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k21_txt as text
%        str2double(get(hObject,'String')) returns contents of k21_txt as a double


% --- Executes during object creation, after setting all properties.
function k21_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k21_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k32_txt_Callback(hObject, eventdata, handles)
% hObject    handle to k32_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k32_txt as text
%        str2double(get(hObject,'String')) returns contents of k32_txt as a double


% --- Executes during object creation, after setting all properties.
function k32_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k32_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k22_txt_Callback(hObject, eventdata, handles)
% hObject    handle to k22_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k22_txt as text
%        str2double(get(hObject,'String')) returns contents of k22_txt as a double


% --- Executes during object creation, after setting all properties.
function k22_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k22_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k44_txt_Callback(hObject, eventdata, handles)
% hObject    handle to k44_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k44_txt as text
%        str2double(get(hObject,'String')) returns contents of k44_txt as a double


% --- Executes during object creation, after setting all properties.
function k44_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k44_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k34_txt_Callback(hObject, eventdata, handles)
% hObject    handle to k34_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k34_txt as text
%        str2double(get(hObject,'String')) returns contents of k34_txt as a double


% --- Executes during object creation, after setting all properties.
function k34_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k34_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k11_txt_Callback(hObject, eventdata, handles)
% hObject    handle to k11_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k11_txt as text
%        str2double(get(hObject,'String')) returns contents of k11_txt as a double


% --- Executes during object creation, after setting all properties.
function k11_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k11_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function k13_txt_Callback(hObject, eventdata, handles)
% hObject    handle to k13_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k13_txt as text
%        str2double(get(hObject,'String')) returns contents of k13_txt as a double


% --- Executes during object creation, after setting all properties.
function k13_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k13_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k31_txt_Callback(hObject, eventdata, handles)
% hObject    handle to k31_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k31_txt as text
%        str2double(get(hObject,'String')) returns contents of k31_txt as a double


% --- Executes during object creation, after setting all properties.
function k31_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k31_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k23_txt_Callback(hObject, eventdata, handles)
% hObject    handle to k23_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k23_txt as text
%        str2double(get(hObject,'String')) returns contents of k23_txt as a double


% --- Executes during object creation, after setting all properties.
function k23_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k23_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cas_txt_Callback(hObject, eventdata, handles)
% hObject    handle to cas_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cas_txt as text
%        str2double(get(hObject,'String')) returns contents of cas_txt as a double


% --- Executes during object creation, after setting all properties.
function cas_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cas_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
