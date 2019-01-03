function varargout = guiPopulace(varargin)
% GUIPOPULACE MATLAB code for guiPopulace.fig
%      GUIPOPULACE, by itself, creates a new GUIPOPULACE or raises the existing
%      singleton*.
%
%      H = GUIPOPULACE returns the handle to a new GUIPOPULACE or the handle to
%      the existing singleton*.
%
%      GUIPOPULACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIPOPULACE.M with the given input arguments.
%
%      GUIPOPULACE('Property','Value',...) creates a new GUIPOPULACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiPopulace_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiPopulace_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiPopulace

% Last Modified by GUIDE v2.5 28-May-2014 14:19:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiPopulace_OpeningFcn, ...
                   'gui_OutputFcn',  @guiPopulace_OutputFcn, ...
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


% --- Executes just before guiPopulace is made visible.
function guiPopulace_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiPopulace (see VARARGIN)

% Choose default command line output for guiPopulace
handles.output = hObject;
        set(handles.textX0, 'visible', 'on');
        set(handles.editX0, 'visible', 'on');
        set(handles.textR, 'visible', 'on');
        set(handles.editR, 'visible', 'on');
        set(handles.textT, 'visible', 'on');
        set(handles.editT, 'visible', 'on');
        set(handles.textK, 'visible', 'off');
        set(handles.editK, 'visible', 'off');
        set(handles.textLov, 'visible', 'off');
        set(handles.editLov, 'visible', 'off');
        set(handles.textPretvoreni, 'visible', 'off');
        set(handles.editPretvoreni, 'visible', 'off');
        set(handles.textUmrtnost, 'visible', 'off');
        set(handles.editUmrtnost, 'visible', 'off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiPopulace wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiPopulace_OutputFcn(hObject, eventdata, handles) 
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
popup=get(handles.popupmenu1,'Value');

switch popup
    case 1
        popis='Malthusuv model';  
        set(handles.textX0, 'visible', 'on');        
        set(handles.editX0, 'visible', 'on');
        set(handles.editX0, 'String', '10');
        set(handles.textR, 'visible', 'on');
        set(handles.editR, 'String', '0.07');
        set(handles.editR, 'visible', 'on');
        set(handles.textT, 'visible', 'on');
        set(handles.editT, 'visible', 'on');
        set(handles.editT, 'String', '100');
        set(handles.textK, 'visible', 'off');
        set(handles.editK, 'visible', 'off');
        set(handles.textLov, 'visible', 'off');
        set(handles.editLov, 'visible', 'off');
        set(handles.textPretvoreni, 'visible', 'off');
        set(handles.editPretvoreni, 'visible', 'off');
        set(handles.textUmrtnost, 'visible', 'off');
        set(handles.editUmrtnost, 'visible', 'off');
    case 2
        popis='Logisticky model';
        set(handles.textX0, 'visible', 'on');
        set(handles.editX0, 'visible', 'on');
        set(handles.editX0, 'String', '10');
        set(handles.textR, 'visible', 'on');
        set(handles.editR, 'visible', 'on');
        set(handles.editR, 'String', '2');
        set(handles.textT, 'visible', 'on');
        set(handles.editT, 'visible', 'on');
        set(handles.editT, 'String', '30');
        set(handles.textK, 'visible', 'on');
        set(handles.editK, 'visible', 'on');
        et(handles.editK, 'String', '100');
        set(handles.textK, 'String', 'Kapacita:')
        set(handles.textLov, 'visible', 'off');
        set(handles.editLov, 'visible', 'off');
        set(handles.textPretvoreni, 'visible', 'off');
        set(handles.editPretvoreni, 'visible', 'off');
        set(handles.textUmrtnost, 'visible', 'off');
        set(handles.editUmrtnost, 'visible', 'off');
        
    case 3
        popis='Model Lodky a Voltery';
        set(handles.textX0, 'visible', 'on');
        set(handles.editX0, 'visible', 'on');
        set(handles.editX0, 'String', '500');
        
        set(handles.textR, 'visible', 'on');
        set(handles.editR, 'visible', 'on');
        set(handles.editR, 'String', '2');
        
        set(handles.textT, 'visible', 'on');
        set(handles.editT, 'visible', 'on');
        set(handles.editT, 'String', '20');
        %pouziti Kapaciti jako y0
        set(handles.textK, 'String', 'y0:')
        set(handles.textK, 'visible', 'on');
        set(handles.editK, 'visible', 'on');
        set(handles.editK, 'String', '200');        
        
        set(handles.textLov, 'visible', 'on');
        set(handles.editLov, 'visible', 'on');
        set(handles.editLov, 'String', '0.02');
        
        set(handles.textPretvoreni, 'visible', 'on');
        set(handles.editPretvoreni, 'visible', 'on');
        set(handles.editPretvoreni, 'String', '0.02');
        
        set(handles.textUmrtnost, 'visible', 'on');
        set(handles.editUmrtnost, 'visible', 'on');
        set(handles.editUmrtnost, 'String', '3');
    otherwise
        popis='Neznamy model';
        set(handles.textX0, 'visible', 'off');
        set(handles.editX0, 'visible', 'off');
        set(handles.textR, 'visible', 'off');
        set(handles.editR, 'visible', 'off');
        set(handles.textT, 'visible', 'off');
        set(handles.editT, 'visible', 'off');
        set(handles.textK, 'visible', 'off');
        set(handles.editK, 'visible', 'off');
        set(handles.textLov, 'visible', 'off');
        set(handles.editLov, 'visible', 'off');
        set(handles.textPretvoreni, 'visible', 'off');
        set(handles.editPretvoreni, 'visible', 'off');
        set(handles.textUmrtnost, 'visible', 'off');
        set(handles.editUmrtnost, 'visible', 'off');
end

set(handles.textPopisModelu,'String',popis);
guidata(hObject,handles)


        

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



function editX0_Callback(hObject, eventdata, handles)
% hObject    handle to editX0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editX0 as text
%        str2double(get(hObject,'String')) returns contents of editX0 as a double


% --- Executes during object creation, after setting all properties.
function editX0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editX0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editR_Callback(hObject, eventdata, handles)
% hObject    handle to editR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editR as text
%        str2double(get(hObject,'String')) returns contents of editR as a double


% --- Executes during object creation, after setting all properties.
function editR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editT_Callback(hObject, eventdata, handles)
% hObject    handle to editT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editT as text
%        str2double(get(hObject,'String')) returns contents of editT as a double


% --- Executes during object creation, after setting all properties.
function editT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonSimulace.
function pushbuttonSimulace_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonSimulace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
popup=get(handles.popupmenu1,'Value');
x0=str2double(get(handles.editX0,'String'));
r=str2double(get(handles.editR,'String'));
t=str2double(get(handles.editT,'String'));
switch popup
    case 1        
        %Vykresleni Malthusuv model
        axes(handles.axes1);
        hold off;
        plot(fceMalthus(x0, r, t))      
    case 2
        %Vykresleni Logisticky model
        k=str2double(get(handles.editK,'String'));
        axes(handles.axes1);
        hold off;
        plot(fceLogistic(x0, r, t, k))
    case 3
        %Vykresleni Model dravec korist
        y0=str2double(get(handles.editK,'String'));;%zadavani kapacity pouzito jako y0
        lov=str2double(get(handles.editLov,'String'));
        pretvoreni=str2double(get(handles.editPretvoreni,'String'));
        umrtnost=str2double(get(handles.editUmrtnost,'String'));
        LaV=fceLodkyVoltery(x0, y0, t, r, lov, pretvoreni, umrtnost);
        axes(handles.axes1);
        hold off;
        plot(LaV(1,:))
        hold on;
        plot(LaV(2,:),'r')
        
end
guidata(hObject,handles)



function editK_Callback(hObject, eventdata, handles)
% hObject    handle to editK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editK as text
%        str2double(get(hObject,'String')) returns contents of editK as a double


% --- Executes during object creation, after setting all properties.
function editK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editLov_Callback(hObject, eventdata, handles)
% hObject    handle to editLov (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editLov as text
%        str2double(get(hObject,'String')) returns contents of editLov as a double


% --- Executes during object creation, after setting all properties.
function editLov_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editLov (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editPretvoreni_Callback(hObject, eventdata, handles)
% hObject    handle to editPretvoreni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPretvoreni as text
%        str2double(get(hObject,'String')) returns contents of editPretvoreni as a double


% --- Executes during object creation, after setting all properties.
function editPretvoreni_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPretvoreni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editUmrtnost_Callback(hObject, eventdata, handles)
% hObject    handle to editUmrtnost (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editUmrtnost as text
%        str2double(get(hObject,'String')) returns contents of editUmrtnost as a double


% --- Executes during object creation, after setting all properties.
function editUmrtnost_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editUmrtnost (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
