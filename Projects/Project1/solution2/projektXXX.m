function varargout = projektXXX(varargin)
% PROJEKTXXX MATLAB code for projektXXX.fig
%      PROJEKTXXX, by itself, creates a new PROJEKTXXX or raises the existing
%      singleton*.
%
%      H = PROJEKTXXX returns the handle to a new PROJEKTXXX or the handle to
%      the existing singleton*.
%
%      PROJEKTXXX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJEKTXXX.M with the given input arguments.
%
%      PROJEKTXXX('Property','Value',...) creates a new PROJEKTXXX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before projektXXX_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to projektXXX_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help projektXXX

% Last Modified by GUIDE v2.5 19-May-2013 11:57:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @projektXXX_OpeningFcn, ...
                   'gui_OutputFcn',  @projektXXX_OutputFcn, ...
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


% --- Executes just before projektXXX is made visible.
function projektXXX_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to projektXXX (see VARARGIN)
        set(handles.uipanel1, 'Visible', 'off');
        set(handles.uipanel2, 'Visible', 'off');

        

% Choose default command line output for projektXXX
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes projektXXX wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = projektXXX_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
a=get(handles.popupmenu1,'Value');

        set(handles.text1, 'Visible', 'on');
        set(handles.text2, 'Visible', 'on');
        set(handles.text3, 'Visible', 'on');
        set(handles.text4, 'Visible', 'on');
        set(handles.text5, 'Visible', 'on');
        set(handles.text6, 'Visible', 'on');
        set(handles.text7, 'Visible', 'on');
        set(handles.text8, 'Visible', 'on');
        set(handles.text9, 'Visible', 'on');
        set(handles.text10, 'Visible', 'on');
        set(handles.edit1, 'Visible', 'on');
        set(handles.edit2, 'Visible', 'on');
        set(handles.edit3, 'Visible', 'on');
        set(handles.edit4, 'Visible', 'on');
        set(handles.edit5, 'Visible', 'on');
        set(handles.edit6, 'Visible', 'on');
        set(handles.edit7, 'Visible', 'on');
        set(handles.edit8, 'Visible', 'on');
        set(handles.edit9, 'Visible', 'on');
        set(handles.edit10, 'Visible', 'on');
        set(handles.uipanel1, 'Visible', 'on');
        set(handles.uipanel2, 'Visible', 'on');
        set(handles.edit8, 'Enable', 'on');
        bdclose('all');
       
        
switch a
    case 1 %vyber pro malthuse

        set(handles.text1, 'String', 'u1');
        set(handles.text2, 'String', 'ini int');

        set(handles.edit3, 'Visible', 'off');
        set(handles.edit4, 'Visible', 'off');
        set(handles.edit5, 'Visible', 'off');
        set(handles.text3, 'Visible', 'off');
        set(handles.text4, 'Visible', 'off');
        set(handles.text5, 'Visible', 'off');
        set(handles.uipanel2, 'Visible', 'off');
    case 2 % vyber pro epidemiologicky model

        set(handles.text1, 'String', 'r');
        set(handles.text2, 'String', 'ini nachyl.');
        set(handles.text3, 'String', 'ini nemoc.');
        set(handles.text4, 'String', 'ini odol.');
        set(handles.text5, 'String', 'a');
        set(handles.uipanel2, 'Visible', 'off');
    case 3 %vyber pro kolmogorova
        %nastaveni jmena text boxu
        set(handles.text1, 'String', 'rou1');
        set(handles.text2, 'String', 'K1');
        set(handles.text3, 'String', 'P');
        set(handles.text4, 'String', 'C');
        set(handles.text5, 'String', 'a');
        set(handles.text6, 'String', 'e');
        set(handles.text7, 'String', 'm');
        set(handles.text8, 'String', 'ini1');
        set(handles.text9, 'String', 'ini2');
        set(handles.text10, 'Visible', 'off');
        set(handles.edit10, 'Visible', 'off');
    case 4 % vyber pro dravec-korist se zpozdenim
       

        set(handles.text1, 'String', 'ktau1');
        set(handles.text2, 'String', 'kK1');
        set(handles.text3, 'String', 'krou1');
        set(handles.text4, 'String', 'kini');
        set(handles.text5, 'String', 'ptau2');
        set(handles.text6, 'String', 'pk2');
        set(handles.text7, 'String', 'prou2');
        set(handles.text8, 'String', 'pini');
        set(handles.text9, 'Visible', 'off');
        set(handles.text10, 'Visible', 'off');
        set(handles.edit9, 'Visible', 'off');
        set(handles.edit10, 'Visible', 'off');
    case 5 %vyber pro konkurence dvou populaci

        set(handles.text1, 'String', 'ini1');
        set(handles.text2, 'String', 'ini2');
        set(handles.text3, 'String', 'K1');
        set(handles.text4, 'String', 'K2');
        set(handles.text5, 'String', 'ro1');
        set(handles.text6, 'String', 'ro2');
        set(handles.text7, 'String', 'b12');
        set(handles.text8, 'String', 'b21');
        set(handles.text9, 'Visible', 'off');
        set(handles.text10, 'Visible', 'off');
        set(handles.edit9, 'Visible', 'off');
        set(handles.edit10, 'Visible', 'off');
    case 6 %vyber pro spolupraci dvou populaci

        set(handles.text1, 'String', 'ini1');
        set(handles.text2, 'String', 'ini2');
        set(handles.text3, 'String', 'K1');
        set(handles.text4, 'String', 'K2');
        set(handles.text5, 'String', 'ro1');
        set(handles.text6, 'String', 'ro2');
        set(handles.text7, 'String', 'b12');
        set(handles.text8, 'String', 'b21');
        set(handles.text9, 'Visible', 'off');
        set(handles.text10, 'Visible', 'off');
        set(handles.edit9, 'Visible', 'off');
        set(handles.edit10, 'Visible', 'off');
    case 7 %vyber logistickeho modelu

        set(handles.text1, 'String', 'ini1');
        set(handles.text2, 'String', 'K1');
        set(handles.text3, 'String', 'ro1');
        set(handles.text4, 'String', 'Tau1');
        set(handles.text5, 'Visible', 'off');
        set(handles.edit5, 'Visible', 'off');
        set(handles.uipanel2, 'Visible', 'off');
        
end



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
swa=get(handles.popupmenu1,'Value');


t=10;

switch swa
    case 1 %vyber pro malthuse
        u1=str2double(get(handles.edit1,'String'));
        ini=str2double(get(handles.edit2,'String'));
        codmalthus(u1,ini);
    case 2 % vyber pro epidemiologicky model

        r=str2double(get(handles.edit1, 'String'));
        ininachyl=str2double(get(handles.edit2, 'String'));
        ininemoc=str2double(get(handles.edit3, 'String'));
        iniodol=str2double(get(handles.edit4, 'String'));
        apar=str2double(get(handles.edit5, 'String'));
        codepimol( r, ininachyl, ininemoc, iniodol, apar );
    case 3 %vyber pro kolmogorova

        rou1=str2double(get(handles.edit1, 'String'));
        K1=str2double(get(handles.edit2, 'String'));
        P=str2double(get(handles.edit3, 'String'));
        C=str2double(get(handles.edit4, 'String'));
        apar=str2double(get(handles.edit5, 'String'));
        e=str2double(get(handles.edit6, 'String'));
        m=str2double(get(handles.edit7, 'String'));
        ini1=str2double(get(handles.edit8, 'String'));
        ini2=str2double(get(handles.edit9, 'String'));
        codkolmogo( rou1, K1, P, C, apar, e, m, ini1, ini2 );
    case 4 % vyber pro dravec-korist se zpozdenim
 
        ktau1=str2double(get(handles.edit1, 'String'));
        kK1=str2double(get(handles.edit2, 'String'));
        krou1=str2double(get(handles.edit3, 'String'));
        kini=str2double(get(handles.edit4, 'String'));
        ptau2=str2double(get(handles.edit5, 'String'));
        pK2=str2double(get(handles.edit6, 'String'));
        prou2=str2double(get(handles.edit7, 'String'));
        pini=str2double(get(handles.edit8, 'String'));
        coddrkozpo( ktau1, kK1, krou1, kini, ptau2, pK2, prou2, pini );

    case 5 %vyber pro konkurence dvou populaci

        ini1=str2double(get(handles.edit1, 'String'));
        ini2=str2double(get(handles.edit2, 'String'));
        K1=str2double(get(handles.edit3, 'String'));
        K2=str2double(get(handles.edit4, 'String'));
        ro1=str2double(get(handles.edit5, 'String'));
        ro2=str2double(get(handles.edit6, 'String'));
        b12=str2double(get(handles.edit7, 'String'));
        b21=str2double(get(handles.edit8, 'String'));
        codkon2pop(ini1,ini2,K1,K2,ro1,ro2,b12,b21 );
    case 6 %vyber pro spolupraci dvou populaci
        ini1=str2double(get(handles.edit1, 'String'));
        ini2=str2double(get(handles.edit2, 'String'));
        K1=str2double(get(handles.edit3, 'String'));
        K2=str2double(get(handles.edit4, 'String'));
        ro1=str2double(get(handles.edit5, 'String'));
        ro2=str2double(get(handles.edit6, 'String'));
        b12=str2double(get(handles.edit7, 'String'));
        b21=str2double(get(handles.edit8, 'String'));
        codspol2pop(ini1,ini2,K1,K2,ro1,ro2,b12,b21);
    case 7 %vyber logistickeho modelu

        ini1=str2double(get(handles.edit1, 'String'));
        K1=str2double(get(handles.edit2, 'String'));
        ro1=str2double(get(handles.edit3, 'String'));
        Tau1=str2double(get(handles.edit4, 'String'));
        codlogisti(ini1,K1,ro1,Tau1);
        
end


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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
