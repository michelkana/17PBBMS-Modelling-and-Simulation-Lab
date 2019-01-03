function varargout = model1(varargin)
% MODEL1 MATLAB code for model1.fig
%      MODEL1, by itself, creates a new MODEL1 or raises the existing
%      singleton*.
%
%      H = MODEL1 returns the handle to a new MODEL1 or the handle to
%      the existing singleton*.
%
%      MODEL1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MODEL1.M with the given input arguments.
%
%      MODEL1('Property','Value',...) creates a new MODEL1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before model1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to model1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help model1

% Last Modified by GUIDE v2.5 02-Jun-2014 17:12:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @model1_OpeningFcn, ...
                   'gui_OutputFcn',  @model1_OutputFcn, ...
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


% --- Executes just before model1 is made visible.
function model1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to model1 (see VARARGIN)

% Choose default command line output for model1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes model1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = model1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Button.
function Button_Callback(hObject, eventdata, handles)
% hObject    handle to Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
u1str=get(handles.u1,'String');
u1=str2num(u1str);
u2str=get(handles.u2,'String');
u2=str2num(u2str);
u3str=get(handles.u3,'String');
u3=str2num(u3str);
u4str=get(handles.u4,'String');
u4=str2num(u4str);
v1str=get(handles.V1,'String');
v1=str2num(u1str);
v2str=get(handles.V2,'String');
v2=str2num(u2str);
v3str=get(handles.V3,'String');
v3=str2num(u3str);
v4str=get(handles.V4,'String');
v4=str2num(u4str);
k11str=get(handles.k11,'String');
k11=str2num(k11str);
k12str=get(handles.k12,'String');
k12=str2num(k12str);
k13str=get(handles.k13,'String');
k13=str2num(k13str);
k14str=get(handles.k14,'String');
k14=str2num(k14str);
k21str=get(handles.k21,'String');
k21=str2num(k21str);
k22str=get(handles.k22,'String');
k22=str2num(k22str);
k23str=get(handles.k23,'String');
k23=str2num(k23str);
k24str=get(handles.k24,'String');
k24=str2num(k24str);
k31str=get(handles.k31,'String');
k31=str2num(k31str);
k32str=get(handles.k32,'String');
k32=str2num(k32str);
k33str=get(handles.k33,'String');
k33=str2num(k33str);
k34str=get(handles.k34,'String');
k34=str2num(k34str);
k41str=get(handles.k41,'String');
k41=str2num(k41str);
k42str=get(handles.k42,'String');
k42=str2num(k42str);
k43str=get(handles.k43,'String');
k43=str2num(k43str);
k44str=get(handles.k44,'String');
k44=str2num(k44str);
pocetkompartmentu=get(handles.PK,'Value');




if (pocetkompartmentu==1)
X=['x1']
Y=['y1']
U=['u1']
C=[1/v1]

B=[u1]

A=[-k11]



elseif (pocetkompartmentu==2)

Y=['y1' ; 'y2']

X=['x1' ; 'x2']
U=['u1' ; 'u2']

C=[1/v1 0; 0 1/v2]

B=[u1 0; 0 u2]

A=[(-k11-k12) k21; k12 (-k22-k21)]




elseif (pocetkompartmentu==3)

X=['x1'; 'x2'; 'x3']

Y=['y1' ;'y2' ;'y3']
U=['u1' ; 'u2' ; 'u3']

C=[1/v1 0 0 ; 0 0 0; 0 0 0]

B=[u1 0 0 ; 0 u2 0; 0 0 u3]

A=[(-k11-k12-k13) k21 k31; k12 (-k22-k21-k23) k32; k13 k23 (-k33-k31-k32)]

elseif (pocetkompartmentu==4)


X=['x1'; 'x2' ;'x3'; 'x4']

Y=['y1' ;'y2' ;'y3'; 'y4']
U=['u1' ; 'u2' ; 'u3'; 'u4']

C=[1/v1 0 0 0; 0 1/v2 0 0; 0 0 1/v3 0; 0 0 0 1/v4]

B=[u1 0 0 0; 0 u2 0 0; 0 0 u3 0; 0 0 0 u4]

A=[(-k11-k12-k13-k14) k21 k31 k41; k12 (-k22-k21-k23-k24) k32 k42; k13 k23 (-k33-k31-k32-k34) k43; k14 k24 k34 (-k44-k41-k42-k43)]
end




if (pocetkompartmentu==1)
     syms s K11  V1 ;
if(k11==0)
K11=0
end

Ak=[-K11]
Ck=[1/V1]
I=eye(1);
if(u1==1)
Ck=[1/V1]
I=eye(1);
G=(s*I-Ak);
Gc=(s*I-A);
BK=Ck*adjoint(G)*B
BKc=adjoint(Gc)*B
BKK=char(BK(1,1))
BKKc=char(BKc(1,1))
end


elseif (pocetkompartmentu==2)
syms s K11 K12 K21 K22 V1 ;

if(k11==0)
K11=0
end
if(k12==0)
K12=0
end
if(k21==0)
K21=0
end
if(k22==0)
K22=0
end
Ak=[(-K11-K12) K21; K12 (-K22-K21)]
if(u1==1)
Ck=[1/V1 0;0 0]
I=eye(2);
G=(s*I-Ak);
Gc=(s*I-A);
BK=Ck*adjoint(G)*B
BKc=adjoint(Gc)*B
BKK=char(BK(1,1))
BKKc=char(BKc(1,1))
elseif(u2==1)
Ck=[0 0;0 1/V1]
I=eye(2);
G=(s*I-Ak);
Gc=(s*I-A);
BK=Ck*adjoint(G)*B
BKc=adjoint(Gc)*B
BKK=char(BK(2,2))
BKKc=char(BKc(2,2))
end

elseif (pocetkompartmentu==3)
    syms s K11 K12 K13 K21 K22 K23 K31 K32 K33 V1 ;

if(k11==0)
K11=0
end
if(k12==0)
K12=0
end
if(k13==0)
K13=0
end
if(k21==0)
K21=0
end
if(k22==0)
K22=0
end
if(k23==0)
K23=0
end
if(k31==0)
K31=0
end
if(k32==0)
K32=0
end
if(k33==0)
K33=0
end
Ak=[(-K11-K12-K13) K21 K31; K12 (-K22-K21-K23) K32; K13 K23 (-K33-K31-K32)]
if(u1==1)
Ck=[1/V1 0 0;0 0 0;0 0 0]
I=eye(3);
G=(s*I-Ak);
Gc=(s*I-A);
BK=Ck*adjoint(G)*B
BKc=adjoint(Gc)*B
BKK=char(BK(1,1))
BKKc=char(BKc(1,1))
elseif(u2==1)
Ck=[0 0 0;0 1/V1 0;0 0 0]
I=eye(3);
G=(s*I-Ak);
Gc=(s*I-A);
BK=Ck*adjoint(G)*B
BKc=adjoint(Gc)*B
BKK=char(BK(2,2))
BKKc=char(BKc(2,2))
elseif(u3==1)
Ck=[0 0 0;0 0 0;0 0 1/V1]
I=eye(3);
G=(s*I-Ak);
Gc=(s*I-A);
BK=Ck*adjoint(G)*B
BKc=adjoint(Gc)*B
BKK=char(BK(3,3))
BKKc=char(BKc(3,3))
end

    elseif (pocetkompartmentu==4)
        syms s K11 K12 K13 K14 K21 K22 K23 K24 K31 K32 K33 K34 K41 K42 K43 K44 V1 ;

if(k11==0)
K11=0
end
if(k12==0)
K12=0
end
if(k13==0)
K13=0
end
if(k14==0)
K14=0
end
if(k21==0)
K21=0
end
if(k22==0)
K22=0
end
if(k23==0)
K23=0
end
if(k24==0)
K24=0
end
if(k31==0)
K31=0
end
if(k32==0)
K32=0
end
if(k33==0)
K33=0
end
if(k34==0)
K34=0
end
if(k41==0)
K41=0
end
if(k42==0)
K42=0
end
if(k43==0)
K43=0
end
if(k44==0)
K44=0
end
Ak=[(-K11-K12-K13-K14) K21 K31 K41; K12 (-K22-K21-K23-K24) K32 K42; K13 K23 (-K33-K31-K32-K34) K43; K14 K24 K34 (-K44-K41-K42-K43)]
if(u1==1)
Ck=[1/V1 0 0 0;0 0 0 0;0 0 0 0;0 0 0 0]
I=eye(4);
G=(s*I-Ak);
Gc=(s*I-A);
BK=Ck*adjoint(G)*B
BKc=adjoint(Gc)*B
BKK=char(BK(1,1))
BKKc=char(BKc(1,1))
elseif(u2==1)
Ck=[0 0 0 0;0 1/V1 0 0;0 0 0 0;0 0 0 0]
I=eye(4);
G=(s*I-Ak);
Gc=(s*I-A);
BK=Ck*adjoint(G)*B
BKc=adjoint(Gc)*B
BKK=char(BK(2,2))
BKKc=char(BKc(2,2))
elseif(u3==1)
Ck=[0 0 0 0;0 0 0 0;0 0 1/V1 0;0 0 0 0]
I=eye(4);
G=(s*I-Ak);
Gc=(s*I-A);
BK=Ck*adjoint(G)*B
BKc=adjoint(Gc)*B
BKK=char(BK(3,3))
BKKc=char(BKc(3,3))
elseif(u4==1)
Ck=[0 0 0 0;0 0 0 0;0 0 0 0;0 0 0 1/V1]
I=eye(4);
G=(s*I-Ak);
Gc=(s*I-A);
BK=Ck*adjoint(G)*B
BKc=adjoint(Gc)*B
BKK=char(BK(4,4))
BKKc=char(BKc(4,4))
end


end

set(handles.Top, 'String', BKK) 
AK=det(G)
AKK=char(AK)
set(handles.Bottom, 'String', AKK)
Am=mat2str(A);
set(handles.TopC, 'String', strcat('(',BKKc,')' ,'/V')) 
AKc=det(Gc)
AKKc=char(AKc)

set(handles.BottomC, 'String', AKKc)
Am=mat2str(A);
set(handles.MatrixA, 'String', Am)
Bm=mat2str(B);
set(handles.MatrixB, 'String', Bm)
Cm=char(Ck);
set(handles.MatrixC, 'String', Cm)
set(handles.MatrixX, 'String', X)
set(handles.MatrixY, 'String', Y)
set(handles.MatrixU, 'String', U)
syms V;
AB=strsplit(AKKc,'+')%bottom
BA=strsplit(BKKc,'+')%top
if(pocetkompartmentu==1)
    a0=BA(1)/V
    a0=char(a0)
    b1=char(AB(1))
    b0=char(AB(2))

    set(handles.a0, 'String',strcat('a0=', a0))
    set(handles.b0, 'String',strcat('b0=', b0))
    set(handles.b1, 'String',strcat('b1=', b1))   

elseif(pocetkompartmentu==2)
    a1=char(BA(1)/V)
    a0=char(BA(2)/V)
    b2=char(AB(2))
    b1=char(AB(1))
    b0=char(AB(3))
    set(handles.a0, 'String',strcat('a0=', a0))
    set(handles.a1, 'String',strcat('a1=', a1))
    set(handles.b0, 'String',strcat('b0=', b0))
    set(handles.b1, 'String',strcat('b1=', b1)) 
    set(handles.b2, 'String',strcat('b2=', b2))
    
elseif(pocetkompartmentu==3)
    a2=char(BA(2)/V)
    a1=char(BA(1)/V)
    a0=char(BA(3)/V)
    b3=char(AB(3))
    b2=char(AB(2))
    b1=char(AB(1))
    b0=char(AB(4))
     set(handles.a0, 'String',strcat('a0=', a0))
    set(handles.a1, 'String',strcat('a1=', a1))
    set(handles.a2, 'String',strcat('a2=', a2))
    set(handles.b0, 'String',strcat('b0=', b0))
    set(handles.b1, 'String',strcat('b1=', b1)) 
    set(handles.b2, 'String',strcat('b2=', b2))
    set(handles.b3, 'String',strcat('b3=', b3))
    elseif(pocetkompartmentu==4)
    a3=char(BA(3))
    a2=char(BA(2)/V)
    a1=char(BA(1)/V)
    a0=char(BA(4)/V)
    b4=char(AB(4))
    b3=char(AB(3))
    b2=char(AB(2))
    b1=char(AB(1))
    b0=char(AB(5))
    set(handles.a0, 'String',strcat('a0=', a0))
    set(handles.a1, 'String',strcat('a1=', a1))
    set(handles.a2, 'String',strcat('a1=', a2))
    set(handles.a3, 'String',strcat('a1=', a3))
    set(handles.b0, 'String',strcat('b0=', b0))
    set(handles.b1, 'String',strcat('b1=', b1)) 
    set(handles.b2, 'String',strcat('b2=', b2))
    set(handles.b3, 'String',strcat('b3=', b3))
    set(handles.b4, 'String',strcat('b4=', b4))
end
    

% --- Executes on selection change in PK.
function PK_Callback(hObject, eventdata, handles)
% hObject    handle to PK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PK contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PK


% --- Executes during object creation, after setting all properties.
function PK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function u1_Callback(hObject, eventdata, handles)
% hObject    handle to u1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of u1 as text
%        str2double(get(hObject,'String')) returns contents of u1 as a double


% --- Executes during object creation, after setting all properties.
function u1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to u1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function u2_Callback(hObject, eventdata, handles)
% hObject    handle to u2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of u2 as text
%        str2double(get(hObject,'String')) returns contents of u2 as a double


% --- Executes during object creation, after setting all properties.
function u2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to u2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function u3_Callback(hObject, eventdata, handles)
% hObject    handle to u3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of u3 as text
%        str2double(get(hObject,'String')) returns contents of u3 as a double


% --- Executes during object creation, after setting all properties.
function u3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to u3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function u4_Callback(hObject, eventdata, handles)
% hObject    handle to u4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of u4 as text
%        str2double(get(hObject,'String')) returns contents of u4 as a double


% --- Executes during object creation, after setting all properties.
function u4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to u4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V1_Callback(hObject, eventdata, handles)
% hObject    handle to V1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V1 as text
%        str2double(get(hObject,'String')) returns contents of V1 as a double


% --- Executes during object creation, after setting all properties.
function V1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V2_Callback(hObject, eventdata, handles)
% hObject    handle to V2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V2 as text
%        str2double(get(hObject,'String')) returns contents of V2 as a double


% --- Executes during object creation, after setting all properties.
function V2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V3_Callback(hObject, eventdata, handles)
% hObject    handle to V3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V3 as text
%        str2double(get(hObject,'String')) returns contents of V3 as a double


% --- Executes during object creation, after setting all properties.
function V3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V4_Callback(hObject, eventdata, handles)
% hObject    handle to V4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V4 as text
%        str2double(get(hObject,'String')) returns contents of V4 as a double


% --- Executes during object creation, after setting all properties.
function V4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k11_Callback(hObject, eventdata, handles)
% hObject    handle to k11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k11 as text
%        str2double(get(hObject,'String')) returns contents of k11 as a double


% --- Executes during object creation, after setting all properties.
function k11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k22_Callback(hObject, eventdata, handles)
% hObject    handle to k22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k22 as text
%        str2double(get(hObject,'String')) returns contents of k22 as a double


% --- Executes during object creation, after setting all properties.
function k22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k33_Callback(hObject, eventdata, handles)
% hObject    handle to k33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k33 as text
%        str2double(get(hObject,'String')) returns contents of k33 as a double


% --- Executes during object creation, after setting all properties.
function k33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k44_Callback(hObject, eventdata, handles)
% hObject    handle to k44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k44 as text
%        str2double(get(hObject,'String')) returns contents of k44 as a double


% --- Executes during object creation, after setting all properties.
function k44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k12_Callback(hObject, eventdata, handles)
% hObject    handle to k12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k12 as text
%        str2double(get(hObject,'String')) returns contents of k12 as a double


% --- Executes during object creation, after setting all properties.
function k12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k21_Callback(hObject, eventdata, handles)
% hObject    handle to k21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k21 as text
%        str2double(get(hObject,'String')) returns contents of k21 as a double


% --- Executes during object creation, after setting all properties.
function k21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k31_Callback(hObject, eventdata, handles)
% hObject    handle to k31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k31 as text
%        str2double(get(hObject,'String')) returns contents of k31 as a double


% --- Executes during object creation, after setting all properties.
function k31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k41_Callback(hObject, eventdata, handles)
% hObject    handle to k41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k41 as text
%        str2double(get(hObject,'String')) returns contents of k41 as a double


% --- Executes during object creation, after setting all properties.
function k41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k13_Callback(hObject, eventdata, handles)
% hObject    handle to k13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k13 as text
%        str2double(get(hObject,'String')) returns contents of k13 as a double


% --- Executes during object creation, after setting all properties.
function k13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k23_Callback(hObject, eventdata, handles)
% hObject    handle to k23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k23 as text
%        str2double(get(hObject,'String')) returns contents of k23 as a double


% --- Executes during object creation, after setting all properties.
function k23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k32_Callback(hObject, eventdata, handles)
% hObject    handle to k32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k32 as text
%        str2double(get(hObject,'String')) returns contents of k32 as a double


% --- Executes during object creation, after setting all properties.
function k32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k42_Callback(hObject, eventdata, handles)
% hObject    handle to k42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k42 as text
%        str2double(get(hObject,'String')) returns contents of k42 as a double


% --- Executes during object creation, after setting all properties.
function k42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k14_Callback(hObject, eventdata, handles)
% hObject    handle to k14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k14 as text
%        str2double(get(hObject,'String')) returns contents of k14 as a double


% --- Executes during object creation, after setting all properties.
function k14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k24_Callback(hObject, eventdata, handles)
% hObject    handle to k24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k24 as text
%        str2double(get(hObject,'String')) returns contents of k24 as a double


% --- Executes during object creation, after setting all properties.
function k24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k34_Callback(hObject, eventdata, handles)
% hObject    handle to k34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k34 as text
%        str2double(get(hObject,'String')) returns contents of k34 as a double


% --- Executes during object creation, after setting all properties.
function k34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k43_Callback(hObject, eventdata, handles)
% hObject    handle to k43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k43 as text
%        str2double(get(hObject,'String')) returns contents of k43 as a double


% --- Executes during object creation, after setting all properties.
function k43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Y1.
function Y1_Callback(hObject, eventdata, handles)
% hObject    handle to Y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Y1


% --- Executes on button press in Y4.
function Y4_Callback(hObject, eventdata, handles)
% hObject    handle to Y4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Y4


% --- Executes on button press in Y2.
function Y2_Callback(hObject, eventdata, handles)
% hObject    handle to Y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Y2


% --- Executes on button press in Y3.
function Y3_Callback(hObject, eventdata, handles)
% hObject    handle to Y3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Y3
