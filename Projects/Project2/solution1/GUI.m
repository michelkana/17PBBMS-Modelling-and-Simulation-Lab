function varargout = GUI(varargin)
global pocet;
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 25-May-2014 19:48:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global pocet;
global initJedn;
global initKont;
global initV;
global initK;
global barva1;
global barva2;
global barva3;
global barva4;
global barva5;
global cas;

pocet=3;
initJedn = 70;
initKont = 10;
initV = 100;
initK = 0.2;
cc=hsv(20);
barva1 = cc(1,:);
barva2 = cc(4,:);
barva3 = cc(8,:);
barva4 = cc(12,:);
barva5 = cc(18,:);



set(0,'defaultLineLineWidth', 2.5);
set(0,'DefaultAxesLineStyle','-');

init(hObject, eventdata, handles);

% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbuttonOdebrat.
function pushbuttonOdebrat_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonOdebrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pocet;

if(pocet == 2)
      set(handles.pushbuttonOdebrat, 'Enable', 'Off');
else
    if(pocet==5)
        set(handles.pushbuttonPridat, 'Enable', 'On');
    end
end
pocet=pocet-1;
update(hObject, eventdata, handles);

function init(hObject, eventdata, handles)
global pocet;
global initJedn;
global initKont;
global initV;
global initK;
global barva1;
global barva2;
global barva3;
global barva4;
global barva5;

set(handles.uipanel1, 'BackgroundColor', barva1);
set(handles.uipanel2, 'BackgroundColor', barva2);
set(handles.uipanel3, 'BackgroundColor', barva3);
set(handles.uipanel4, 'BackgroundColor', barva4);
set(handles.uipanel5, 'BackgroundColor', barva5);

set(handles.textKomp1, 'BackgroundColor', barva1);
set(handles.textKomp2, 'BackgroundColor', barva2);
set(handles.textKomp3, 'BackgroundColor', barva3);
set(handles.textKomp4, 'BackgroundColor', barva4);
set(handles.textKomp5, 'BackgroundColor', barva5);

switch pocet
    case 1
        %panel
            set(handles.uipanel1, 'Visible', 'On');
            set(handles.uipanel2, 'Visible', 'Off');
            set(handles.uipanel3, 'Visible', 'Off');
            set(handles.uipanel4, 'Visible', 'Off');
            set(handles.uipanel5, 'Visible', 'Off');
        %skryti
            %popisky
            set(handles.textKomp2, 'Visible', 'Off');
            set(handles.textKomp3, 'Visible', 'Off');
            set(handles.textKomp4, 'Visible', 'Off');
            set(handles.textKomp5, 'Visible', 'Off');    
            set(handles.textKx2, 'Visible', 'Off');
            set(handles.textKx3, 'Visible', 'Off');
            set(handles.textKx4, 'Visible', 'Off');
            set(handles.textKx5, 'Visible', 'Off');
            %popupmenu
            set(handles.popupmenuDruh2, 'Visible', 'Off');
            set(handles.popupmenuDruh3, 'Visible', 'Off');
            set(handles.popupmenuDruh4, 'Visible', 'Off');
            set(handles.popupmenuDruh5, 'Visible', 'Off');
            %jednorazove
            set(handles.editJednU1, 'Visible', 'On');
            set(handles.editJednU2, 'Visible', 'Off');
            set(handles.editJednU3, 'Visible', 'Off');
            set(handles.editJednU4, 'Visible', 'Off');
            set(handles.editJednU5, 'Visible', 'Off');
            %kontinualne
            set(handles.editKontU1, 'Visible', 'On');
            set(handles.editKontU2, 'Visible', 'Off');
            set(handles.editKontU3, 'Visible', 'Off');
            set(handles.editKontU4, 'Visible', 'Off');
            set(handles.editKontU5, 'Visible', 'Off');
            %V
            set(handles.editV2, 'Visible', 'Off');
            set(handles.editV3, 'Visible', 'Off');
            set(handles.editV4, 'Visible', 'Off');
            set(handles.editV5, 'Visible', 'Off');
            %k1
            set(handles.editk11, 'Visible', 'On');
            set(handles.editk12, 'Visible', 'Off');
            set(handles.editk13, 'Visible', 'Off');
            set(handles.editk14, 'Visible', 'Off');
            set(handles.editk15, 'Visible', 'Off');
            %k2
            set(handles.editk21, 'Visible', 'Off');
            set(handles.editk22, 'Visible', 'Off');
            set(handles.editk23, 'Visible', 'Off');
            set(handles.editk24, 'Visible', 'Off');
            set(handles.editk25, 'Visible', 'Off');
            %k3
            set(handles.editk31, 'Visible', 'Off');
            set(handles.editk32, 'Visible', 'Off');
            set(handles.editk33, 'Visible', 'Off');
            set(handles.editk34, 'Visible', 'Off');
            set(handles.editk35, 'Visible', 'Off');
            %k4
            set(handles.editk41, 'Visible', 'Off');
            set(handles.editk42, 'Visible', 'Off');
            set(handles.editk43, 'Visible', 'Off');
            set(handles.editk44, 'Visible', 'Off');
            set(handles.editk45, 'Visible', 'Off');
            %k5
            set(handles.editk51, 'Visible', 'Off');
            set(handles.editk52, 'Visible', 'Off');
            set(handles.editk53, 'Visible', 'Off');
            set(handles.editk54, 'Visible', 'Off');
            set(handles.editk55, 'Visible', 'Off');
        %nastaveni hodnot
            %jednorazove
            set(handles.editJednU1, 'String', num2str(initJedn));
            set(handles.editJednU2, 'String', '0');
            set(handles.editJednU3, 'String', '0');
            set(handles.editJednU4, 'String', '0');
            set(handles.editJednU5, 'String', '0');
            %kontinualne
            set(handles.editKontU1, 'String', num2str(initKont));
            set(handles.editKontU2, 'String', '0');
            set(handles.editKontU3, 'String', '0');
            set(handles.editKontU4, 'String', '0');
            set(handles.editKontU5, 'String', '0');
            %V
            set(handles.editV1, 'String', num2str(initV));
            set(handles.editV2, 'String', '0');
            set(handles.editV3, 'String', '0');
            set(handles.editV4, 'String', '0');
            set(handles.editV5, 'String', '0');
            %k1
            set(handles.editk11, 'String', num2str(initK));
            set(handles.editk12, 'String', '0');
            set(handles.editk13, 'String', '0');
            set(handles.editk14, 'String', '0');
            set(handles.editk15, 'String', '0');
            %k2
            set(handles.editk21, 'String', '0');
            set(handles.editk22, 'String', '0');
            set(handles.editk23, 'String', '0');
            set(handles.editk24, 'String', '0');
            set(handles.editk25, 'String', '0');
            %k3
            set(handles.editk31, 'String', '0');
            set(handles.editk32, 'String', '0');
            set(handles.editk33, 'String', '0');
            set(handles.editk34, 'String', '0');
            set(handles.editk35, 'String', '0');
            %k4
            set(handles.editk41, 'String', '0');
            set(handles.editk42, 'String', '0');
            set(handles.editk43, 'String', '0');
            set(handles.editk44, 'String', '0');
            set(handles.editk45, 'String', '0');
            %k5
            set(handles.editk51, 'String', '0');
            set(handles.editk52, 'String', '0');
            set(handles.editk53, 'String', '0');
            set(handles.editk54, 'String', '0');
            set(handles.editk55, 'String', '0');
    case 2
        %panel
            set(handles.uipanel1, 'Visible', 'On');
            set(handles.uipanel2, 'Visible', 'On');
            set(handles.uipanel3, 'Visible', 'Off');
            set(handles.uipanel4, 'Visible', 'Off');
            set(handles.uipanel5, 'Visible', 'Off');
        %skryti
            %popisky
            set(handles.textKomp2, 'Visible', 'On');
            set(handles.textKomp3, 'Visible', 'Off');
            set(handles.textKomp4, 'Visible', 'Off');
            set(handles.textKomp5, 'Visible', 'Off');    
            set(handles.textKx2, 'Visible', 'On');
            set(handles.textKx3, 'Visible', 'Off');
            set(handles.textKx4, 'Visible', 'Off');
            set(handles.textKx5, 'Visible', 'Off');
            %popupmenu
            set(handles.popupmenuDruh2, 'Visible', 'On');
            set(handles.popupmenuDruh3, 'Visible', 'Off');
            set(handles.popupmenuDruh4, 'Visible', 'Off');
            set(handles.popupmenuDruh5, 'Visible', 'Off');
            %jednorazove
            set(handles.editJednU1, 'Visible', 'On');
            set(handles.editJednU2, 'Visible', 'On');
            set(handles.editJednU3, 'Visible', 'Off');
            set(handles.editJednU4, 'Visible', 'Off');
            set(handles.editJednU5, 'Visible', 'Off');
            %kontinualne
            set(handles.editKontU1, 'Visible', 'On');
            set(handles.editKontU2, 'Visible', 'On');
            set(handles.editKontU3, 'Visible', 'Off');
            set(handles.editKontU4, 'Visible', 'Off');
            set(handles.editKontU5, 'Visible', 'Off');
            %V
            set(handles.editV2, 'Visible', 'On');
            set(handles.editV3, 'Visible', 'Off');
            set(handles.editV4, 'Visible', 'Off');
            set(handles.editV5, 'Visible', 'Off');
            %k1
            set(handles.editk11, 'Visible', 'On');
            set(handles.editk12, 'Visible', 'On');
            set(handles.editk13, 'Visible', 'Off');
            set(handles.editk14, 'Visible', 'Off');
            set(handles.editk15, 'Visible', 'Off');
            %k2
            set(handles.editk21, 'Visible', 'On');
            set(handles.editk22, 'Visible', 'On');
            set(handles.editk23, 'Visible', 'Off');
            set(handles.editk24, 'Visible', 'Off');
            set(handles.editk25, 'Visible', 'Off');
            %k3
            set(handles.editk31, 'Visible', 'Off');
            set(handles.editk32, 'Visible', 'Off');
            set(handles.editk33, 'Visible', 'Off');
            set(handles.editk34, 'Visible', 'Off');
            set(handles.editk35, 'Visible', 'Off');
            %k4
            set(handles.editk41, 'Visible', 'Off');
            set(handles.editk42, 'Visible', 'Off');
            set(handles.editk43, 'Visible', 'Off');
            set(handles.editk44, 'Visible', 'Off');
            set(handles.editk45, 'Visible', 'Off');
            %k5
            set(handles.editk51, 'Visible', 'Off');
            set(handles.editk52, 'Visible', 'Off');
            set(handles.editk53, 'Visible', 'Off');
            set(handles.editk54, 'Visible', 'Off');
            set(handles.editk55, 'Visible', 'Off');
        %nastaveni hodnot
            %jednorazove
            set(handles.editJednU1, 'String', num2str(initJedn));
            set(handles.editJednU2, 'String', num2str(initJedn));
            set(handles.editJednU3, 'String', '0');
            set(handles.editJednU4, 'String', '0');
            set(handles.editJednU5, 'String', '0');
            %kontinualne
            set(handles.editKontU1, 'String', num2str(initKont));
            set(handles.editKontU2, 'String', num2str(initKont));
            set(handles.editKontU3, 'String', '0');
            set(handles.editKontU4, 'String', '0');
            set(handles.editKontU5, 'String', '0');
            %V
            set(handles.editV1, 'String', num2str(initV));
            set(handles.editV2, 'String', num2str(initV));
            set(handles.editV3, 'String', '0');
            set(handles.editV4, 'String', '0');
            set(handles.editV5, 'String', '0');
            %k1
            set(handles.editk11, 'String', num2str(initK));
            set(handles.editk12, 'String', num2str(initK));
            set(handles.editk13, 'String', '0');
            set(handles.editk14, 'String', '0');
            set(handles.editk15, 'String', '0');
            %k2
            set(handles.editk21, 'String', num2str(initK));
            set(handles.editk22, 'String', num2str(initK));
            set(handles.editk23, 'String', '0');
            set(handles.editk24, 'String', '0');
            set(handles.editk25, 'String', '0');
            %k3
            set(handles.editk31, 'String', '0');
            set(handles.editk32, 'String', '0');
            set(handles.editk33, 'String', '0');
            set(handles.editk34, 'String', '0');
            set(handles.editk35, 'String', '0');
            %k4
            set(handles.editk41, 'String', '0');
            set(handles.editk42, 'String', '0');
            set(handles.editk43, 'String', '0');
            set(handles.editk44, 'String', '0');
            set(handles.editk45, 'String', '0');
            %k5
            set(handles.editk51, 'String', '0');
            set(handles.editk52, 'String', '0');
            set(handles.editk53, 'String', '0');
            set(handles.editk54, 'String', '0');
            set(handles.editk55, 'String', '0');
    case 3
        %panel
            set(handles.uipanel1, 'Visible', 'On');
            set(handles.uipanel2, 'Visible', 'On');
            set(handles.uipanel3, 'Visible', 'On');
            set(handles.uipanel4, 'Visible', 'Off');
            set(handles.uipanel5, 'Visible', 'Off');
        %skryti
            %popisky
            set(handles.textKomp2, 'Visible', 'On');
            set(handles.textKomp3, 'Visible', 'On');
            set(handles.textKomp4, 'Visible', 'Off');
            set(handles.textKomp5, 'Visible', 'Off');    
            set(handles.textKx2, 'Visible', 'On');
            set(handles.textKx3, 'Visible', 'On');
            set(handles.textKx4, 'Visible', 'Off');
            set(handles.textKx5, 'Visible', 'Off');
            %popupmenu
            set(handles.popupmenuDruh2, 'Visible', 'On');
            set(handles.popupmenuDruh3, 'Visible', 'On');
            set(handles.popupmenuDruh4, 'Visible', 'Off');
            set(handles.popupmenuDruh5, 'Visible', 'Off');
            %jednorazove
            set(handles.editJednU1, 'Visible', 'On');
            set(handles.editJednU2, 'Visible', 'On');
            set(handles.editJednU3, 'Visible', 'On');
            set(handles.editJednU4, 'Visible', 'Off');
            set(handles.editJednU5, 'Visible', 'Off');
            %kontinualne
            set(handles.editKontU1, 'Visible', 'On');
            set(handles.editKontU2, 'Visible', 'On');
            set(handles.editKontU3, 'Visible', 'On');
            set(handles.editKontU4, 'Visible', 'Off');
            set(handles.editKontU5, 'Visible', 'Off');
            %V
            set(handles.editV2, 'Visible', 'On');
            set(handles.editV3, 'Visible', 'On');
            set(handles.editV4, 'Visible', 'Off');
            set(handles.editV5, 'Visible', 'Off');
            %k1
            set(handles.editk11, 'Visible', 'On');
            set(handles.editk12, 'Visible', 'On');
            set(handles.editk13, 'Visible', 'On');
            set(handles.editk14, 'Visible', 'Off');
            set(handles.editk15, 'Visible', 'Off');
            %k2
            set(handles.editk21, 'Visible', 'On');
            set(handles.editk22, 'Visible', 'On');
            set(handles.editk23, 'Visible', 'On');
            set(handles.editk24, 'Visible', 'Off');
            set(handles.editk25, 'Visible', 'Off');
            %k3
            set(handles.editk31, 'Visible', 'On');
            set(handles.editk32, 'Visible', 'On');
            set(handles.editk33, 'Visible', 'On');
            set(handles.editk34, 'Visible', 'Off');
            set(handles.editk35, 'Visible', 'Off');
            %k4
            set(handles.editk41, 'Visible', 'Off');
            set(handles.editk42, 'Visible', 'Off');
            set(handles.editk43, 'Visible', 'Off');
            set(handles.editk44, 'Visible', 'Off');
            set(handles.editk45, 'Visible', 'Off');
            %k5
            set(handles.editk51, 'Visible', 'Off');
            set(handles.editk52, 'Visible', 'Off');
            set(handles.editk53, 'Visible', 'Off');
            set(handles.editk54, 'Visible', 'Off');
            set(handles.editk55, 'Visible', 'Off');
        %nastaveni hodnot
            %jednorazove
            set(handles.editJednU1, 'String', num2str(initJedn));
            set(handles.editJednU2, 'String', num2str(initJedn));
            set(handles.editJednU3, 'String', num2str(initJedn));
            set(handles.editJednU4, 'String', '0');
            set(handles.editJednU5, 'String', '0');
            %kontinualne
            set(handles.editKontU1, 'String', num2str(initKont));
            set(handles.editKontU2, 'String', num2str(initKont));
            set(handles.editKontU3, 'String', num2str(initKont));
            set(handles.editKontU4, 'String', '0');
            set(handles.editKontU5, 'String', '0');
            %V
            set(handles.editV1, 'String', num2str(initV));
            set(handles.editV2, 'String', num2str(initV));
            set(handles.editV3, 'String', num2str(initV));
            set(handles.editV4, 'String', '0');
            set(handles.editV5, 'String', '0');
            %k1
            set(handles.editk11, 'String', num2str(initK));
            set(handles.editk12, 'String', num2str(initK));
            set(handles.editk13, 'String', num2str(initK));
            set(handles.editk14, 'String', '0');
            set(handles.editk15, 'String', '0');
            %k2
            set(handles.editk21, 'String', num2str(initK));
            set(handles.editk22, 'String', num2str(initK));
            set(handles.editk23, 'String', num2str(initK));
            set(handles.editk24, 'String', '0');
            set(handles.editk25, 'String', '0');
            %k3
            set(handles.editk31, 'String', num2str(initK));
            set(handles.editk32, 'String', num2str(initK));
            set(handles.editk33, 'String', num2str(initK));
            set(handles.editk34, 'String', '0');
            set(handles.editk35, 'String', '0');
            %k4
            set(handles.editk41, 'String', '0');
            set(handles.editk42, 'String', '0');
            set(handles.editk43, 'String', '0');
            set(handles.editk44, 'String', '0');
            set(handles.editk45, 'String', '0');
            %k5
            set(handles.editk51, 'String', '0');
            set(handles.editk52, 'String', '0');
            set(handles.editk53, 'String', '0');
            set(handles.editk54, 'String', '0');
            set(handles.editk55, 'String', '0');
    case 4
        %panel
            set(handles.uipanel1, 'Visible', 'On');
            set(handles.uipanel2, 'Visible', 'On');
            set(handles.uipanel3, 'Visible', 'On');
            set(handles.uipanel4, 'Visible', 'On');
            set(handles.uipanel5, 'Visible', 'Off');
        %skryti
            %popisky
            set(handles.textKomp2, 'Visible', 'On');
            set(handles.textKomp3, 'Visible', 'On');
            set(handles.textKomp4, 'Visible', 'On');
            set(handles.textKomp5, 'Visible', 'Off');    
            set(handles.textKx2, 'Visible', 'On');
            set(handles.textKx3, 'Visible', 'On');
            set(handles.textKx4, 'Visible', 'On');
            set(handles.textKx5, 'Visible', 'Off');
            %popupmenu
            set(handles.popupmenuDruh2, 'Visible', 'On');
            set(handles.popupmenuDruh3, 'Visible', 'On');
            set(handles.popupmenuDruh4, 'Visible', 'On');
            set(handles.popupmenuDruh5, 'Visible', 'Off');
            %jednorazove
            set(handles.editJednU1, 'Visible', 'On');
            set(handles.editJednU2, 'Visible', 'On');
            set(handles.editJednU3, 'Visible', 'On');
            set(handles.editJednU4, 'Visible', 'On');
            set(handles.editJednU5, 'Visible', 'Off');
            %kontinualne
            set(handles.editKontU1, 'Visible', 'On');
            set(handles.editKontU2, 'Visible', 'On');
            set(handles.editKontU3, 'Visible', 'On');
            set(handles.editKontU4, 'Visible', 'On');
            set(handles.editKontU5, 'Visible', 'Off');
            %V
            set(handles.editV2, 'Visible', 'On');
            set(handles.editV3, 'Visible', 'On');
            set(handles.editV4, 'Visible', 'On');
            set(handles.editV5, 'Visible', 'Off');
            %k1
            set(handles.editk11, 'Visible', 'On');
            set(handles.editk12, 'Visible', 'On');
            set(handles.editk13, 'Visible', 'On');
            set(handles.editk14, 'Visible', 'On');
            set(handles.editk15, 'Visible', 'Off');
            %k2
            set(handles.editk21, 'Visible', 'On');
            set(handles.editk22, 'Visible', 'On');
            set(handles.editk23, 'Visible', 'On');
            set(handles.editk24, 'Visible', 'On');
            set(handles.editk25, 'Visible', 'Off');
            %k3
            set(handles.editk31, 'Visible', 'On');
            set(handles.editk32, 'Visible', 'On');
            set(handles.editk33, 'Visible', 'On');
            set(handles.editk34, 'Visible', 'On');
            set(handles.editk35, 'Visible', 'Off');
            %k4
            set(handles.editk41, 'Visible', 'On');
            set(handles.editk42, 'Visible', 'On');
            set(handles.editk43, 'Visible', 'On');
            set(handles.editk44, 'Visible', 'On');
            set(handles.editk45, 'Visible', 'Off');
            %k5
            set(handles.editk51, 'Visible', 'Off');
            set(handles.editk52, 'Visible', 'Off');
            set(handles.editk53, 'Visible', 'Off');
            set(handles.editk54, 'Visible', 'Off');
            set(handles.editk55, 'Visible', 'Off');
        %nastaveni hodnot
            %jednorazove
            set(handles.editJednU1, 'String', num2str(initJedn));
            set(handles.editJednU2, 'String', num2str(initJedn));
            set(handles.editJednU3, 'String', num2str(initJedn));
            set(handles.editJednU4, 'String', num2str(initJedn));
            set(handles.editJednU5, 'String', '0');
            %kontinualne
            set(handles.editKontU1, 'String', num2str(initKont));
            set(handles.editKontU2, 'String', num2str(initKont));
            set(handles.editKontU3, 'String', num2str(initKont));
            set(handles.editKontU4, 'String', num2str(initKont));
            set(handles.editKontU5, 'String', '0');
            %V
            set(handles.editV1, 'String', num2str(initV));
            set(handles.editV2, 'String', num2str(initV));
            set(handles.editV3, 'String', num2str(initV));
            set(handles.editV4, 'String', num2str(initV));
            set(handles.editV5, 'String', '0');
            %k1
            set(handles.editk11, 'String', num2str(initK));
            set(handles.editk12, 'String', num2str(initK));
            set(handles.editk13, 'String', num2str(initK));
            set(handles.editk14, 'String', num2str(initK));
            set(handles.editk15, 'String', '0');
            %k2
            set(handles.editk21, 'String', num2str(initK));
            set(handles.editk22, 'String', num2str(initK));
            set(handles.editk23, 'String', num2str(initK));
            set(handles.editk24, 'String', num2str(initK));
            set(handles.editk25, 'String', '0');
            %k3
            set(handles.editk31, 'String', num2str(initK));
            set(handles.editk32, 'String', num2str(initK));
            set(handles.editk33, 'String', num2str(initK));
            set(handles.editk34, 'String', num2str(initK));
            set(handles.editk35, 'String', '0');
            %k4
            set(handles.editk41, 'String', num2str(initK));
            set(handles.editk42, 'String', num2str(initK));
            set(handles.editk43, 'String', num2str(initK));
            set(handles.editk44, 'String', num2str(initK));
            set(handles.editk45, 'String', '0');
            %k5
            set(handles.editk51, 'String', '0');
            set(handles.editk52, 'String', '0');
            set(handles.editk53, 'String', '0');
            set(handles.editk54, 'String', '0');
            set(handles.editk55, 'String', '0');
    case 5
        %panel
            set(handles.uipanel1, 'Visible', 'On');
            set(handles.uipanel2, 'Visible', 'On');
            set(handles.uipanel3, 'Visible', 'On');
            set(handles.uipanel4, 'Visible', 'On');
            set(handles.uipanel5, 'Visible', 'On');
        %skryti
            %popisky
            set(handles.textKomp2, 'Visible', 'On');
            set(handles.textKomp3, 'Visible', 'On');
            set(handles.textKomp4, 'Visible', 'On');
            set(handles.textKomp5, 'Visible', 'On');    
            set(handles.textKx2, 'Visible', 'On');
            set(handles.textKx3, 'Visible', 'On');
            set(handles.textKx4, 'Visible', 'On');
            set(handles.textKx5, 'Visible', 'On');
            %popupmenu
            set(handles.popupmenuDruh2, 'Visible', 'On');
            set(handles.popupmenuDruh3, 'Visible', 'On');
            set(handles.popupmenuDruh4, 'Visible', 'On');
            set(handles.popupmenuDruh5, 'Visible', 'On');
            %jednorazove
            set(handles.editJednU1, 'Visible', 'On');
            set(handles.editJednU2, 'Visible', 'On');
            set(handles.editJednU3, 'Visible', 'On');
            set(handles.editJednU4, 'Visible', 'On');
            set(handles.editJednU5, 'Visible', 'On');
            %kontinualne
            set(handles.editKontU1, 'Visible', 'On');
            set(handles.editKontU2, 'Visible', 'On');
            set(handles.editKontU3, 'Visible', 'On');
            set(handles.editKontU4, 'Visible', 'On');
            set(handles.editKontU5, 'Visible', 'On');
            %V
            set(handles.editV2, 'Visible', 'On');
            set(handles.editV3, 'Visible', 'On');
            set(handles.editV4, 'Visible', 'On');
            set(handles.editV5, 'Visible', 'On');
            %k1
            set(handles.editk11, 'Visible', 'On');
            set(handles.editk12, 'Visible', 'On');
            set(handles.editk13, 'Visible', 'On');
            set(handles.editk14, 'Visible', 'On');
            set(handles.editk15, 'Visible', 'On');
            %k2
            set(handles.editk21, 'Visible', 'On');
            set(handles.editk22, 'Visible', 'On');
            set(handles.editk23, 'Visible', 'On');
            set(handles.editk24, 'Visible', 'On');
            set(handles.editk25, 'Visible', 'On');
            %k3
            set(handles.editk31, 'Visible', 'On');
            set(handles.editk32, 'Visible', 'On');
            set(handles.editk33, 'Visible', 'On');
            set(handles.editk34, 'Visible', 'On');
            set(handles.editk35, 'Visible', 'On');
            %k4
            set(handles.editk41, 'Visible', 'On');
            set(handles.editk42, 'Visible', 'On');
            set(handles.editk43, 'Visible', 'On');
            set(handles.editk44, 'Visible', 'On');
            set(handles.editk45, 'Visible', 'On');
            %k5
            set(handles.editk51, 'Visible', 'On');
            set(handles.editk52, 'Visible', 'On');
            set(handles.editk53, 'Visible', 'On');
            set(handles.editk54, 'Visible', 'On');
            set(handles.editk55, 'Visible', 'On');
        %nastaveni hodnot
            %jednorazove
            set(handles.editJednU1, 'String', num2str(initJedn));
            set(handles.editJednU2, 'String', num2str(initJedn));
            set(handles.editJednU3, 'String', num2str(initJedn));
            set(handles.editJednU4, 'String', num2str(initJedn));
            set(handles.editJednU5, 'String', num2str(initJedn));
            %kontinualne
            set(handles.editKontU1, 'String', num2str(initKont));
            set(handles.editKontU2, 'String', num2str(initKont));
            set(handles.editKontU3, 'String', num2str(initKont));
            set(handles.editKontU4, 'String', num2str(initKont));
            set(handles.editKontU5, 'String', num2str(initKont));
            %V
            set(handles.editV1, 'String', num2str(initV));
            set(handles.editV2, 'String', num2str(initV));
            set(handles.editV3, 'String', num2str(initV));
            set(handles.editV4, 'String', num2str(initV));
            set(handles.editV5, 'String', num2str(initV));
            %k1
            set(handles.editk11, 'String', num2str(initK));
            set(handles.editk12, 'String', num2str(initK));
            set(handles.editk13, 'String', num2str(initK));
            set(handles.editk14, 'String', num2str(initK));
            set(handles.editk15, 'String', num2str(initK));
            %k2
            set(handles.editk21, 'String', num2str(initK));
            set(handles.editk22, 'String', num2str(initK));
            set(handles.editk23, 'String', num2str(initK));
            set(handles.editk24, 'String', num2str(initK));
            set(handles.editk25, 'String', num2str(initK));
            %k3
            set(handles.editk31, 'String', num2str(initK));
            set(handles.editk32, 'String', num2str(initK));
            set(handles.editk33, 'String', num2str(initK));
            set(handles.editk34, 'String', num2str(initK));
            set(handles.editk35, 'String', num2str(initK));
            %k4
            set(handles.editk41, 'String', num2str(initK));
            set(handles.editk42, 'String', num2str(initK));
            set(handles.editk43, 'String', num2str(initK));
            set(handles.editk44, 'String', num2str(initK));
            set(handles.editk45, 'String', num2str(initK));
            %k5
            set(handles.editk51, 'String', num2str(initK));
            set(handles.editk52, 'String', num2str(initK));
            set(handles.editk53, 'String', num2str(initK));
            set(handles.editk54, 'String', num2str(initK));
            set(handles.editk55, 'String', num2str(initK));
    otherwise
            h=msgbox('error - tento pocet kompartmentu by nemel jit nastavit');
end  

function update(hObject, eventdata, handles)
global pocet;
global initJedn;
global initKont;
global initV;
global initK;

switch pocet
    case 1
        %panel
            set(handles.uipanel2, 'Visible', 'Off');            
        %skryti
            %popisky
            set(handles.textKomp2, 'Visible', 'Off');   
            set(handles.textKx2, 'Visible', 'Off');
            %popupmenu
            set(handles.popupmenuDruh2, 'Visible', 'Off');
            %jednorazove
            set(handles.editJednU2, 'Visible', 'Off');
            %kontinualne
            set(handles.editKontU2, 'Visible', 'Off');
            %V
            set(handles.editV2, 'Visible', 'Off');
            %k1
            set(handles.editk11, 'Visible', 'On');
            set(handles.editk12, 'Visible', 'Off');
            %k2
            set(handles.editk21, 'Visible', 'Off');
            set(handles.editk22, 'Visible', 'Off');
            set(handles.editk23, 'Visible', 'Off');
            set(handles.editk24, 'Visible', 'Off');
            set(handles.editk25, 'Visible', 'Off');
        %nastaveni hodnot
            %jednorazove
            set(handles.editJednU1, 'String', num2str(initJedn));
            set(handles.editJednU2, 'String', '0');
            %kontinualne
            set(handles.editKontU1, 'String', num2str(initKont));
            set(handles.editKontU2, 'String', '0');
            %V
            set(handles.editV1, 'String', num2str(initV));
            set(handles.editV2, 'String', '0');
            %k1
            set(handles.editk11, 'String', num2str(initK));
            set(handles.editk12, 'String', '0');
            %k2
            set(handles.editk21, 'String', '0');
            set(handles.editk22, 'String', '0');
    case 2
        %panel
            set(handles.uipanel2, 'Visible', 'On');
            set(handles.uipanel3, 'Visible', 'Off');            
        %skryti
            %popisky
            set(handles.textKomp2, 'Visible', 'On');
            set(handles.textKomp3, 'Visible', 'Off');   
            set(handles.textKx2, 'Visible', 'On');
            set(handles.textKx3, 'Visible', 'Off');
            %popupmenu
            set(handles.popupmenuDruh2, 'Visible', 'On');
            set(handles.popupmenuDruh3, 'Visible', 'Off');
            %jednorazove
            set(handles.editJednU2, 'Visible', 'On');
            set(handles.editJednU3, 'Visible', 'Off');
            %kontinualne
            set(handles.editKontU2, 'Visible', 'On');
            set(handles.editKontU3, 'Visible', 'Off');
            %V
            set(handles.editV2, 'Visible', 'On');
            set(handles.editV3, 'Visible', 'Off');
            %k1
            set(handles.editk12, 'Visible', 'On');
            set(handles.editk13, 'Visible', 'Off');
            %k2
            set(handles.editk21, 'Visible', 'On');
            set(handles.editk22, 'Visible', 'On');
            set(handles.editk23, 'Visible', 'Off');
            %k3
            set(handles.editk31, 'Visible', 'Off');
            set(handles.editk32, 'Visible', 'Off');
            set(handles.editk33, 'Visible', 'Off');           
        %nastaveni hodnot
            %jednorazove
            set(handles.editJednU2, 'String', num2str(initJedn));
            set(handles.editJednU3, 'String', '0');
            %kontinualne
            set(handles.editKontU2, 'String', num2str(initKont));
            set(handles.editKontU3, 'String', '0');
            %V
            set(handles.editV2, 'String', num2str(initV));
            set(handles.editV3, 'String', '0');
            %k1
            set(handles.editk12, 'String', num2str(initK));
            set(handles.editk13, 'String', '0');
            %k2
            set(handles.editk21, 'String', num2str(initK));
            set(handles.editk22, 'String', num2str(initK));
            set(handles.editk23, 'String', '0');
            %k3
            set(handles.editk31, 'String', '0');
            set(handles.editk32, 'String', '0');
            set(handles.editk33, 'String', '0');
    case 3
        %panel
            set(handles.uipanel3, 'Visible', 'On');
            set(handles.uipanel4, 'Visible', 'Off');
        %skryti
            %popisky
            set(handles.textKomp3, 'Visible', 'On');
            set(handles.textKomp4, 'Visible', 'Off');
            set(handles.textKx3, 'Visible', 'On');
            set(handles.textKx4, 'Visible', 'Off');
            %popupmenu
            set(handles.popupmenuDruh3, 'Visible', 'On');
            set(handles.popupmenuDruh4, 'Visible', 'Off');
            %jednorazove
            set(handles.editJednU3, 'Visible', 'On');
            set(handles.editJednU4, 'Visible', 'Off');
            %kontinualne
            set(handles.editKontU3, 'Visible', 'On');
            set(handles.editKontU4, 'Visible', 'Off');
            %V
            set(handles.editV3, 'Visible', 'On');
            set(handles.editV4, 'Visible', 'Off');
            %k1
            set(handles.editk13, 'Visible', 'On');
            set(handles.editk14, 'Visible', 'Off');
            %k2
            set(handles.editk23, 'Visible', 'On');
            set(handles.editk24, 'Visible', 'Off');
            %k3
            set(handles.editk31, 'Visible', 'On');
            set(handles.editk32, 'Visible', 'On');
            set(handles.editk33, 'Visible', 'On');
            set(handles.editk34, 'Visible', 'Off');
            %k4
            set(handles.editk41, 'Visible', 'Off');
            set(handles.editk42, 'Visible', 'Off');
            set(handles.editk43, 'Visible', 'Off');
            set(handles.editk44, 'Visible', 'Off');
        %nastaveni hodnot
            %jednorazove
            set(handles.editJednU3, 'String', num2str(initJedn));
            set(handles.editJednU4, 'String', '0');
            %kontinualne
            set(handles.editKontU3, 'String', num2str(initKont));
            set(handles.editKontU4, 'String', '0');
            %V
            set(handles.editV3, 'String', num2str(initV));
            set(handles.editV4, 'String', '0');
            %k1
            set(handles.editk13, 'String', num2str(initK));
            set(handles.editk14, 'String', '0');
            %k2
            set(handles.editk23, 'String', num2str(initK));
            set(handles.editk24, 'String', '0');
            %k3
            set(handles.editk31, 'String', num2str(initK));
            set(handles.editk32, 'String', num2str(initK));
            set(handles.editk33, 'String', num2str(initK));
            set(handles.editk34, 'String', '0');
            %k4
            set(handles.editk41, 'String', '0');
            set(handles.editk42, 'String', '0');
            set(handles.editk43, 'String', '0');
            set(handles.editk44, 'String', '0');
    case 4
        %panel
            set(handles.uipanel4, 'Visible', 'On');
            set(handles.uipanel5, 'Visible', 'Off');
        %skryti
            %popisky
            set(handles.textKomp4, 'Visible', 'On');
            set(handles.textKomp5, 'Visible', 'Off');
            set(handles.textKx4, 'Visible', 'On');
            set(handles.textKx5, 'Visible', 'Off');
            %popupmenu
            set(handles.popupmenuDruh4, 'Visible', 'On');
            set(handles.popupmenuDruh5, 'Visible', 'Off');
            %jednorazove
            set(handles.editJednU4, 'Visible', 'On');
            set(handles.editJednU5, 'Visible', 'Off');
            %kontinualne
            set(handles.editKontU4, 'Visible', 'On');
            set(handles.editKontU5, 'Visible', 'Off');
            %V
            set(handles.editV4, 'Visible', 'On');
            set(handles.editV5, 'Visible', 'Off');
            %k1
            set(handles.editk14, 'Visible', 'On');
            set(handles.editk15, 'Visible', 'Off');
            %k2
            set(handles.editk24, 'Visible', 'On');
            set(handles.editk25, 'Visible', 'Off');
            %k3
            set(handles.editk34, 'Visible', 'On');
            set(handles.editk35, 'Visible', 'Off');
            %k4
            set(handles.editk41, 'Visible', 'On');
            set(handles.editk42, 'Visible', 'On');
            set(handles.editk43, 'Visible', 'On');
            set(handles.editk44, 'Visible', 'On');
            set(handles.editk45, 'Visible', 'Off');
            %k5
            set(handles.editk51, 'Visible', 'Off');
            set(handles.editk52, 'Visible', 'Off');
            set(handles.editk53, 'Visible', 'Off');
            set(handles.editk54, 'Visible', 'Off');
            set(handles.editk55, 'Visible', 'Off');
        %nastaveni hodnot
            %jednorazove
            set(handles.editJednU4, 'String', num2str(initJedn));
            set(handles.editJednU5, 'String', '0');
            %kontinualne
            set(handles.editKontU4, 'String', num2str(initKont));
            set(handles.editKontU5, 'String', '0');
            %V
            set(handles.editV4, 'String', num2str(initV));
            set(handles.editV5, 'String', '0');
            %k1
            set(handles.editk14, 'String', num2str(initK));
            set(handles.editk15, 'String', '0');
            %k2
            set(handles.editk24, 'String', num2str(initK));
            set(handles.editk25, 'String', '0');
            %k3
            set(handles.editk34, 'String', num2str(initK));
            set(handles.editk35, 'String', '0');
            %k4 
            set(handles.editk41, 'String', num2str(initK));
            set(handles.editk42, 'String', num2str(initK));
            set(handles.editk43, 'String', num2str(initK));
            set(handles.editk44, 'String', num2str(initK));
            set(handles.editk45, 'String', '0');
            %k5
            set(handles.editk51, 'String', '0');
            set(handles.editk52, 'String', '0');
            set(handles.editk53, 'String', '0');
            set(handles.editk54, 'String', '0');
            set(handles.editk55, 'String', '0');
    case 5
        %panel
            set(handles.uipanel5, 'Visible', 'On');
        %skryti
            %popisky
            set(handles.textKomp5, 'Visible', 'On');
            set(handles.textKx5, 'Visible', 'On');
            %popupmenu
            set(handles.popupmenuDruh5, 'Visible', 'On');
            %jednorazove
            set(handles.editJednU5, 'Visible', 'On');
            %kontinualne
            set(handles.editKontU5, 'Visible', 'On');
            %V
            set(handles.editV5, 'Visible', 'On');
            %k1
            set(handles.editk15, 'Visible', 'On');
            %k2
            set(handles.editk25, 'Visible', 'On');
            %k3
            set(handles.editk35, 'Visible', 'On');
            %k4
            set(handles.editk45, 'Visible', 'On');
            %k5
            set(handles.editk51, 'Visible', 'On');
            set(handles.editk52, 'Visible', 'On');
            set(handles.editk53, 'Visible', 'On');
            set(handles.editk54, 'Visible', 'On');
            set(handles.editk55, 'Visible', 'On');
        %nastaveni hodnot
            %jednorazove
            set(handles.editJednU5, 'String', num2str(initJedn));
            %kontinualne            
            set(handles.editKontU5, 'String', num2str(initKont));
            %V
            set(handles.editV5, 'String', num2str(initV));
            %k1
            set(handles.editk15, 'String', num2str(initK));
            %k2
            set(handles.editk25, 'String', num2str(initK));
            %k3
            set(handles.editk35, 'String', num2str(initK));
            %k4
            set(handles.editk45, 'String', num2str(initK));
            %k5
            set(handles.editk51, 'String', num2str(initK));
            set(handles.editk52, 'String', num2str(initK));
            set(handles.editk53, 'String', num2str(initK));
            set(handles.editk54, 'String', num2str(initK));
            set(handles.editk55, 'String', num2str(initK));
    otherwise
            h=msgbox('error - tento pocet kompartmentu by nemel jit nastavit');
end     


% --- Executes on button press in pushbuttonPridat.
function pushbuttonPridat_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonPridat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pocet;

if(pocet == 4)
      set(handles.pushbuttonPridat, 'Enable', 'Off');
else

    if(pocet==1)
        set(handles.pushbuttonOdebrat, 'Enable', 'On');
    end
end
    pocet=pocet+1;
    update(hObject, eventdata, handles);

% --- Executes on button press in pushbuttonVykreslit.
function pushbuttonVykreslit_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonVykreslit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pocet;
global barva1;
global barva2;
global barva3;
global barva4;
global barva5;
global cas;

%nastaveni casu
cas = str2double(get(handles.editCas, 'String'));
%nastaveni k
set_param('model/Subsystem1/Gain1','Gain',get(handles.editk11,'String'));
set_param('model/Subsystem1/Gain2','Gain',get(handles.editk12,'String'));
set_param('model/Subsystem1/Gain3','Gain',get(handles.editk13,'String'));
set_param('model/Subsystem1/Gain4','Gain',get(handles.editk14,'String'));
set_param('model/Subsystem1/Gain5','Gain',get(handles.editk15,'String'));
set_param('model/Subsystem2/Gain1','Gain',get(handles.editk21,'String'));
set_param('model/Subsystem2/Gain2','Gain',get(handles.editk22,'String'));
set_param('model/Subsystem2/Gain3','Gain',get(handles.editk23,'String'));
set_param('model/Subsystem2/Gain4','Gain',get(handles.editk24,'String'));
set_param('model/Subsystem2/Gain5','Gain',get(handles.editk25,'String'));
set_param('model/Subsystem3/Gain1','Gain',get(handles.editk31,'String'));
set_param('model/Subsystem3/Gain2','Gain',get(handles.editk32,'String'));
set_param('model/Subsystem3/Gain3','Gain',get(handles.editk33,'String'));
set_param('model/Subsystem3/Gain4','Gain',get(handles.editk34,'String'));
set_param('model/Subsystem3/Gain5','Gain',get(handles.editk35,'String'));
set_param('model/Subsystem4/Gain1','Gain',get(handles.editk41,'String'));
set_param('model/Subsystem4/Gain2','Gain',get(handles.editk42,'String'));
set_param('model/Subsystem4/Gain3','Gain',get(handles.editk43,'String'));
set_param('model/Subsystem4/Gain4','Gain',get(handles.editk44,'String'));
set_param('model/Subsystem4/Gain5','Gain',get(handles.editk45,'String'));
set_param('model/Subsystem5/Gain1','Gain',get(handles.editk51,'String'));
set_param('model/Subsystem5/Gain2','Gain',get(handles.editk52,'String'));
set_param('model/Subsystem5/Gain3','Gain',get(handles.editk53,'String'));
set_param('model/Subsystem5/Gain4','Gain',get(handles.editk54,'String'));
set_param('model/Subsystem5/Gain5','Gain',get(handles.editk55,'String'));

switch pocet %switch podle poctu komparmentu
    case 1
        vstup1 = get(handles.popupmenuDruh1,'Value');
        switch vstup1 %switch podle typu vstupu
            case 1        
                u1j=get(handles.editJednU1,'String');
                u1k='0';
            case 2
                u1j='0';
                u1k=get(handles.editKontU1,'String');
            case 3
                u1j=get(handles.editJednU1,'String');
                u1k=get(handles.editKontU1,'String');
        end        
        set_param('model/u1','Value',u1k);        
        set_param('model/Subsystem1/Integrator','InitialCondition',u1j);        
        %nastaveni V
        set_param('model/Subsystem1/GainV','Gain',num2str(1/str2double(get(handles.editV1,'String'))));
        %simulace
        sim('model',cas);
        %vykresleni x
        axes(handles.axes1);
        plot(simoutX1,'color',barva1);
        title('Množství/èas');
        xlabel('Èas');
        ylabel('Množství');
        legend('X1','Location','NorthEastOutside');
        %vykresleni y        
        axes(handles.axes2);
        plot(simoutY1,'color',barva1);
        title('Koncentrace/èas');
        xlabel('Èas');
        ylabel('Koncentrace');
        legend('Y1','Location','NorthEastOutside');
        
    case 2
        vstup1 = get(handles.popupmenuDruh1,'Value');
        switch vstup1
            case 1        
                u1j=get(handles.editJednU1,'String');
                u1k='0';
            case 2
                u1j='0';
                u1k=get(handles.editKontU1,'String');
            case 3
                u1j=get(handles.editJednU1,'String');
                u1k=get(handles.editKontU1,'String');
        end
        set_param('model/u1','Value',u1k);        
        set_param('model/Subsystem1/Integrator','InitialCondition',u1j);
        
        vstup2 = get(handles.popupmenuDruh2,'Value');
        switch vstup2
            case 1        
                u2j=get(handles.editJednU2,'String');
                u2k='0';
            case 2
                u2j='0';
                u2k=get(handles.editKontU2,'String');
            case 3
                u2j=get(handles.editJednU2,'String');
                u2k=get(handles.editKontU2,'String');
        end
        set_param('model/u2','Value',u2k);        
        set_param('model/Subsystem2/Integrator','InitialCondition',u2j);
        
        %nastaveni V
        set_param('model/Subsystem1/GainV','Gain',num2str(1/str2double(get(handles.editV1,'String'))));
        set_param('model/Subsystem2/GainV','Gain',num2str(1/str2double(get(handles.editV2,'String'))));
        
        sim('model',cas);
        cla(handles.axes1);
        cla(handles.axes2);
        %vykresleni x
        axes(handles.axes1);
        hold on;
        plot(simoutX12.time,simoutX12.signals.values(:,1),'color',barva1);
        plot(simoutX12.time,simoutX12.signals.values(:,2),'color',barva2);
        hold off;
        title('Množství/èas');
        xlabel('Èas');
        ylabel('Množství');
        legend('X1','X2','Location','NorthEastOutside');
        %vykresleni y        
        axes(handles.axes2);
        hold on;
        plot(simoutY12.time,simoutY12.signals.values(:,1),'color',barva1);
        plot(simoutY12.time,simoutY12.signals.values(:,2),'color',barva2);
        hold off;
        title('Koncentrace/èas');
        xlabel('Èas');
        ylabel('Koncentrace');
        legend('Y1','Y2','Location','NorthEastOutside');
    case 3
        vstup1 = get(handles.popupmenuDruh1,'Value');
        switch vstup1
            case 1        
                u1j=get(handles.editJednU1,'String');
                u1k='0';
            case 2
                u1j='0';
                u1k=get(handles.editKontU1,'String');
            case 3
                u1j=get(handles.editJednU1,'String');
                u1k=get(handles.editKontU1,'String');
        end
        set_param('model/u1','Value',u1k);        
        set_param('model/Subsystem1/Integrator','InitialCondition',u1j);
        
        vstup2 = get(handles.popupmenuDruh2,'Value');
        switch vstup2
            case 1        
                u2j=get(handles.editJednU2,'String');
                u2k='0';
            case 2
                u2j='0';
                u2k=get(handles.editKontU2,'String');
            case 3
                u2j=get(handles.editJednU2,'String');
                u2k=get(handles.editKontU2,'String');
        end
        set_param('model/u2','Value',u2k);        
        set_param('model/Subsystem2/Integrator','InitialCondition',u2j);
        
        vstup3 = get(handles.popupmenuDruh3,'Value');
        switch vstup3
            case 1        
                u3j=get(handles.editJednU3,'String');
                u3k='0';
            case 2
                u3j='0';
                u3k=get(handles.editKontU3,'String');
            case 3
                u3j=get(handles.editJednU3,'String');
                u3k=get(handles.editKontU3,'String');
        end
        set_param('model/u3','Value',u3k);        
        set_param('model/Subsystem3/Integrator','InitialCondition',u3j);
        
        %nastaveni V
        set_param('model/Subsystem1/GainV','Gain',num2str(1/str2double(get(handles.editV1,'String'))));
        set_param('model/Subsystem2/GainV','Gain',num2str(1/str2double(get(handles.editV2,'String'))));
        set_param('model/Subsystem3/GainV','Gain',num2str(1/str2double(get(handles.editV3,'String'))));
        
        sim('model',cas);
        cla(handles.axes1);
        cla(handles.axes2);
        %vykresleni x
        axes(handles.axes1);
        hold on;
        plot(simoutX123.time,simoutX123.signals.values(:,1),'color',barva1);
        plot(simoutX123.time,simoutX123.signals.values(:,2),'color',barva2);
        plot(simoutX123.time,simoutX123.signals.values(:,3),'color',barva3);
        hold off;
        title('Množství/èas');
        xlabel('Èas');
        ylabel('Množství');
        legend('X1','X2','X3','Location','NorthEastOutside');
        %vykresleni y        
        axes(handles.axes2);
        hold on;
        plot(simoutY123.time,simoutY123.signals.values(:,1),'color',barva1);
        plot(simoutY123.time,simoutY123.signals.values(:,2),'color',barva2);
        plot(simoutY123.time,simoutY123.signals.values(:,3),'color',barva3);
        hold off;
        title('Koncentrace/èas');
        xlabel('Èas');
        ylabel('Koncentrace');
        legend('Y1','Y2','Y3','Location','NorthEastOutside');
    case 4
        vstup1 = get(handles.popupmenuDruh1,'Value');
        switch vstup1
            case 1        
                u1j=get(handles.editJednU1,'String');
                u1k='0';
            case 2
                u1j='0';
                u1k=get(handles.editKontU1,'String');
            case 3
                u1j=get(handles.editJednU1,'String');
                u1k=get(handles.editKontU1,'String');
        end
        set_param('model/u1','Value',u1k);        
        set_param('model/Subsystem1/Integrator','InitialCondition',u1j);
        
        vstup2 = get(handles.popupmenuDruh2,'Value');
        switch vstup2
            case 1        
                u2j=get(handles.editJednU2,'String');
                u2k='0';
            case 2
                u2j='0';
                u2k=get(handles.editKontU2,'String');
            case 3
                u2j=get(handles.editJednU2,'String');
                u2k=get(handles.editKontU2,'String');
        end
        set_param('model/u2','Value',u2k);        
        set_param('model/Subsystem2/Integrator','InitialCondition',u2j);
        
        vstup3 = get(handles.popupmenuDruh3,'Value');
        switch vstup3
            case 1        
                u3j=get(handles.editJednU3,'String');
                u3k='0';
            case 2
                u3j='0';
                u3k=get(handles.editKontU3,'String');
            case 3
                u3j=get(handles.editJednU3,'String');
                u3k=get(handles.editKontU3,'String');
        end
        set_param('model/u3','Value',u3k);        
        set_param('model/Subsystem3/Integrator','InitialCondition',u3j);
        
        vstup4 = get(handles.popupmenuDruh4,'Value');
        switch vstup4
            case 1        
                u4j=get(handles.editJednU4,'String');
                u4k='0';
            case 2
                u4j='0';
                u4k=get(handles.editKontU4,'String');
            case 3
                u4j=get(handles.editJednU4,'String');
                u4k=get(handles.editKontU4,'String');
        end
        set_param('model/u4','Value',u4k);        
        set_param('model/Subsystem4/Integrator','InitialCondition',u4j);
        
        %nastaveni V
        set_param('model/Subsystem1/GainV','Gain',num2str(1/str2double(get(handles.editV1,'String'))));
        set_param('model/Subsystem2/GainV','Gain',num2str(1/str2double(get(handles.editV2,'String'))));
        set_param('model/Subsystem3/GainV','Gain',num2str(1/str2double(get(handles.editV3,'String'))));
        set_param('model/Subsystem4/GainV','Gain',num2str(1/str2double(get(handles.editV4,'String'))));
        
        sim('model',cas);
        cla(handles.axes1);
        cla(handles.axes2);
        %vykresleni x
        axes(handles.axes1);
        hold on;
        plot(simoutX1234.time,simoutX1234.signals.values(:,1),'color',barva1);
        plot(simoutX1234.time,simoutX1234.signals.values(:,2),'color',barva2);
        plot(simoutX1234.time,simoutX1234.signals.values(:,3),'color',barva3);
        plot(simoutX1234.time,simoutX1234.signals.values(:,4),'color',barva4);
        hold off;
        title('Množství/èas');
        xlabel('Èas');
        ylabel('Množství');
        legend('X1','X2','X3','X4','Location','NorthEastOutside');
        %vykresleni y        
        axes(handles.axes2);
        hold on;
        plot(simoutY1234.time,simoutY1234.signals.values(:,1),'color',barva1);
        plot(simoutY1234.time,simoutY1234.signals.values(:,2),'color',barva2);
        plot(simoutY1234.time,simoutY1234.signals.values(:,3),'color',barva3);
        plot(simoutY1234.time,simoutY1234.signals.values(:,4),'color',barva4);
        hold off;
        title('Koncentrace/èas');
        xlabel('Èas');
        ylabel('Koncentrace');
        legend('Y1','Y2','Y3','Y4','Location','NorthEastOutside');
    case 5
        vstup1 = get(handles.popupmenuDruh1,'Value');
        switch vstup1
            case 1        
                u1j=get(handles.editJednU1,'String');
                u1k='0';
            case 2
                u1j='0';
                u1k=get(handles.editKontU1,'String');
            case 3
                u1j=get(handles.editJednU1,'String');
                u1k=get(handles.editKontU1,'String');
        end
        set_param('model/u1','Value',u1k);        
        set_param('model/Subsystem1/Integrator','InitialCondition',u1j);
        
        vstup2 = get(handles.popupmenuDruh2,'Value');
        switch vstup2
            case 1        
                u2j=get(handles.editJednU2,'String');
                u2k='0';
            case 2
                u2j='0';
                u2k=get(handles.editKontU2,'String');
            case 3
                u2j=get(handles.editJednU2,'String');
                u2k=get(handles.editKontU2,'String');
        end
        set_param('model/u2','Value',u2k);        
        set_param('model/Subsystem2/Integrator','InitialCondition',u2j);
        
        vstup3 = get(handles.popupmenuDruh3,'Value');
        switch vstup3
            case 1        
                u3j=get(handles.editJednU3,'String');
                u3k='0';
            case 2
                u3j='0';
                u3k=get(handles.editKontU3,'String');
            case 3
                u3j=get(handles.editJednU3,'String');
                u3k=get(handles.editKontU3,'String');
        end
        set_param('model/u3','Value',u3k);        
        set_param('model/Subsystem3/Integrator','InitialCondition',u3j);
        
        vstup4 = get(handles.popupmenuDruh4,'Value');
        switch vstup4
            case 1        
                u4j=get(handles.editJednU4,'String');
                u4k='0';
            case 2
                u4j='0';
                u4k=get(handles.editKontU4,'String');
            case 3
                u4j=get(handles.editJednU4,'String');
                u4k=get(handles.editKontU4,'String');
        end
        set_param('model/u4','Value',u4k);        
        set_param('model/Subsystem4/Integrator','InitialCondition',u4j);
        
        vstup5 = get(handles.popupmenuDruh5,'Value');
        switch vstup5
            case 1        
                u5j=get(handles.editJednU5,'String');
                u5k='0';
            case 2
                u5j='0';
                u5k=get(handles.editKontU5,'String');
            case 3
                u5j=get(handles.editJednU5,'String');
                u5k=get(handles.editKontU5,'String');
        end
        set_param('model/u5','Value',u5k);        
        set_param('model/Subsystem5/Integrator','InitialCondition',u5j);
        
        %nastaveni V
        set_param('model/Subsystem1/GainV','Gain',num2str(1/str2double(get(handles.editV1,'String'))));
        set_param('model/Subsystem2/GainV','Gain',num2str(1/str2double(get(handles.editV2,'String'))));
        set_param('model/Subsystem3/GainV','Gain',num2str(1/str2double(get(handles.editV3,'String'))));
        set_param('model/Subsystem4/GainV','Gain',num2str(1/str2double(get(handles.editV4,'String'))));
        set_param('model/Subsystem5/GainV','Gain',num2str(1/str2double(get(handles.editV5,'String'))));
        
        sim('model',cas);
        cla(handles.axes1);
        cla(handles.axes2);
        %vykresleni x
        axes(handles.axes1);
        hold on;
        plot(simoutX12345.time,simoutX12345.signals.values(:,1),'color',barva1);
        plot(simoutX12345.time,simoutX12345.signals.values(:,2),'color',barva2);
        plot(simoutX12345.time,simoutX12345.signals.values(:,3),'color',barva3);
        plot(simoutX12345.time,simoutX12345.signals.values(:,4),'color',barva4);
        plot(simoutX12345.time,simoutX12345.signals.values(:,5),'color',barva5);
        hold off;
        title('Množství/èas');
        xlabel('Èas');
        ylabel('Množství');
        legend('X1','X2','X3','X4','X5','Location','NorthEastOutside');
        %vykresleni y        
        axes(handles.axes2);
        hold on;
        plot(simoutY12345.time,simoutY12345.signals.values(:,1),'color',barva1);
        plot(simoutY12345.time,simoutY12345.signals.values(:,2),'color',barva2);
        plot(simoutY12345.time,simoutY12345.signals.values(:,3),'color',barva3);
        plot(simoutY12345.time,simoutY12345.signals.values(:,4),'color',barva4);
        plot(simoutY12345.time,simoutY12345.signals.values(:,5),'color',barva5);
        hold off;
        title('Koncentrace/èas');
        xlabel('Èas');
        ylabel('Koncentrace');
        legend('Y1','Y2','Y3','Y4','Y5','Location','NorthEastOutside');
    otherwise
        h=msgbox('error - tento pocet kompartmentu by nemel jit nastavit');
end



% --- Executes on selection change in popupmenuDruh1.
function popupmenuDruh1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenuDruh1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pom = get(handles.popupmenuDruh1, 'Value');
switch pom
    case 1
        set(handles.editJednU1, 'Enable', 'On');
        set(handles.editKontU1, 'Enable', 'Off');
    case 2
        set(handles.editJednU1, 'Enable', 'Off');
        set(handles.editKontU1, 'Enable', 'On');
    case 3
        set(handles.editJednU1, 'Enable', 'On');
        set(handles.editKontU1, 'Enable', 'On');
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenuDruh1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenuDruh1


% --- Executes during object creation, after setting all properties.
function popupmenuDruh1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenuDruh1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editJednU1_Callback(hObject, eventdata, handles)
% hObject    handle to editJednU1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editJednU1 as text
%        str2double(get(hObject,'String')) returns contents of editJednU1 as a double


% --- Executes during object creation, after setting all properties.
function editJednU1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editJednU1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editKontU1_Callback(hObject, eventdata, handles)
% hObject    handle to editKontU1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editKontU1 as text
%        str2double(get(hObject,'String')) returns contents of editKontU1 as a double


% --- Executes during object creation, after setting all properties.
function editKontU1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editKontU1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk11_Callback(hObject, eventdata, handles)
% hObject    handle to editk11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk11 as text
%        str2double(get(hObject,'String')) returns contents of editk11 as a double


% --- Executes during object creation, after setting all properties.
function editk11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk12_Callback(hObject, eventdata, handles)
% hObject    handle to editk12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk12 as text
%        str2double(get(hObject,'String')) returns contents of editk12 as a double


% --- Executes during object creation, after setting all properties.
function editk12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk13_Callback(hObject, eventdata, handles)
% hObject    handle to editk13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk13 as text
%        str2double(get(hObject,'String')) returns contents of editk13 as a double


% --- Executes during object creation, after setting all properties.
function editk13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk14_Callback(hObject, eventdata, handles)
% hObject    handle to editk14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk14 as text
%        str2double(get(hObject,'String')) returns contents of editk14 as a double


% --- Executes during object creation, after setting all properties.
function editk14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk15_Callback(hObject, eventdata, handles)
% hObject    handle to editk15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk15 as text
%        str2double(get(hObject,'String')) returns contents of editk15 as a double


% --- Executes during object creation, after setting all properties.
function editk15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenuDruh2.
function popupmenuDruh2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenuDruh2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pom = get(handles.popupmenuDruh2, 'Value');
switch pom
    case 1
        set(handles.editJednU2, 'Enable', 'On');
        set(handles.editKontU2, 'Enable', 'Off');
    case 2
        set(handles.editJednU2, 'Enable', 'Off');
        set(handles.editKontU2, 'Enable', 'On');
    case 3
        set(handles.editJednU2, 'Enable', 'On');
        set(handles.editKontU2, 'Enable', 'On');
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenuDruh2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenuDruh2


% --- Executes during object creation, after setting all properties.
function popupmenuDruh2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenuDruh2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editJednU2_Callback(hObject, eventdata, handles)
% hObject    handle to editJednU2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editJednU2 as text
%        str2double(get(hObject,'String')) returns contents of editJednU2 as a double


% --- Executes during object creation, after setting all properties.
function editJednU2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editJednU2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editKontU2_Callback(hObject, eventdata, handles)
% hObject    handle to editKontU2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editKontU2 as text
%        str2double(get(hObject,'String')) returns contents of editKontU2 as a double


% --- Executes during object creation, after setting all properties.
function editKontU2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editKontU2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk21_Callback(hObject, eventdata, handles)
% hObject    handle to editk21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk21 as text
%        str2double(get(hObject,'String')) returns contents of editk21 as a double


% --- Executes during object creation, after setting all properties.
function editk21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk22_Callback(hObject, eventdata, handles)
% hObject    handle to editk22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk22 as text
%        str2double(get(hObject,'String')) returns contents of editk22 as a double


% --- Executes during object creation, after setting all properties.
function editk22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk23_Callback(hObject, eventdata, handles)
% hObject    handle to editk23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk23 as text
%        str2double(get(hObject,'String')) returns contents of editk23 as a double


% --- Executes during object creation, after setting all properties.
function editk23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk24_Callback(hObject, eventdata, handles)
% hObject    handle to editk24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk24 as text
%        str2double(get(hObject,'String')) returns contents of editk24 as a double


% --- Executes during object creation, after setting all properties.
function editk24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk25_Callback(hObject, eventdata, handles)
% hObject    handle to editk25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk25 as text
%        str2double(get(hObject,'String')) returns contents of editk25 as a double


% --- Executes during object creation, after setting all properties.
function editk25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenuDruh3.
function popupmenuDruh3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenuDruh3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pom = get(handles.popupmenuDruh3, 'Value');
switch pom
    case 1
        set(handles.editJednU3, 'Enable', 'On');
        set(handles.editKontU3, 'Enable', 'Off');
    case 2
        set(handles.editJednU3, 'Enable', 'Off');
        set(handles.editKontU3, 'Enable', 'On');
    case 3
        set(handles.editJednU3, 'Enable', 'On');
        set(handles.editKontU3, 'Enable', 'On');
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenuDruh3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenuDruh3


% --- Executes during object creation, after setting all properties.
function popupmenuDruh3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenuDruh3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editJednU3_Callback(hObject, eventdata, handles)
% hObject    handle to editJednU3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editJednU3 as text
%        str2double(get(hObject,'String')) returns contents of editJednU3 as a double


% --- Executes during object creation, after setting all properties.
function editJednU3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editJednU3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editKontU3_Callback(hObject, eventdata, handles)
% hObject    handle to editKontU3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editKontU3 as text
%        str2double(get(hObject,'String')) returns contents of editKontU3 as a double


% --- Executes during object creation, after setting all properties.
function editKontU3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editKontU3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk31_Callback(hObject, eventdata, handles)
% hObject    handle to editk31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk31 as text
%        str2double(get(hObject,'String')) returns contents of editk31 as a double


% --- Executes during object creation, after setting all properties.
function editk31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk32_Callback(hObject, eventdata, handles)
% hObject    handle to editk32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk32 as text
%        str2double(get(hObject,'String')) returns contents of editk32 as a double


% --- Executes during object creation, after setting all properties.
function editk32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk33_Callback(hObject, eventdata, handles)
% hObject    handle to editk33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk33 as text
%        str2double(get(hObject,'String')) returns contents of editk33 as a double


% --- Executes during object creation, after setting all properties.
function editk33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk34_Callback(hObject, eventdata, handles)
% hObject    handle to editk34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk34 as text
%        str2double(get(hObject,'String')) returns contents of editk34 as a double


% --- Executes during object creation, after setting all properties.
function editk34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk35_Callback(hObject, eventdata, handles)
% hObject    handle to editk35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk35 as text
%        str2double(get(hObject,'String')) returns contents of editk35 as a double


% --- Executes during object creation, after setting all properties.
function editk35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenuDruh4.
function popupmenuDruh4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenuDruh4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pom = get(handles.popupmenuDruh4, 'Value');
switch pom
    case 1
        set(handles.editJednU4, 'Enable', 'On');
        set(handles.editKontU4, 'Enable', 'Off');
    case 2
        set(handles.editJednU4, 'Enable', 'Off');
        set(handles.editKontU4, 'Enable', 'On');
    case 3
        set(handles.editJednU4, 'Enable', 'On');
        set(handles.editKontU4, 'Enable', 'On');
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenuDruh4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenuDruh4


% --- Executes during object creation, after setting all properties.
function popupmenuDruh4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenuDruh4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editJednU4_Callback(hObject, eventdata, handles)
% hObject    handle to editJednU4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editJednU4 as text
%        str2double(get(hObject,'String')) returns contents of editJednU4 as a double


% --- Executes during object creation, after setting all properties.
function editJednU4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editJednU4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editKontU4_Callback(hObject, eventdata, handles)
% hObject    handle to editKontU4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editKontU4 as text
%        str2double(get(hObject,'String')) returns contents of editKontU4 as a double


% --- Executes during object creation, after setting all properties.
function editKontU4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editKontU4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk41_Callback(hObject, eventdata, handles)
% hObject    handle to editk41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk41 as text
%        str2double(get(hObject,'String')) returns contents of editk41 as a double


% --- Executes during object creation, after setting all properties.
function editk41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk42_Callback(hObject, eventdata, handles)
% hObject    handle to editk42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk42 as text
%        str2double(get(hObject,'String')) returns contents of editk42 as a double


% --- Executes during object creation, after setting all properties.
function editk42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk43_Callback(hObject, eventdata, handles)
% hObject    handle to editk43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk43 as text
%        str2double(get(hObject,'String')) returns contents of editk43 as a double


% --- Executes during object creation, after setting all properties.
function editk43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk44_Callback(hObject, eventdata, handles)
% hObject    handle to editk44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk44 as text
%        str2double(get(hObject,'String')) returns contents of editk44 as a double


% --- Executes during object creation, after setting all properties.
function editk44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk45_Callback(hObject, eventdata, handles)
% hObject    handle to editk45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk45 as text
%        str2double(get(hObject,'String')) returns contents of editk45 as a double


% --- Executes during object creation, after setting all properties.
function editk45_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenuDruh5.
function popupmenuDruh5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenuDruh5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pom = get(handles.popupmenuDruh5, 'Value');
switch pom
    case 1
        set(handles.editJednU5, 'Enable', 'On');
        set(handles.editKontU5, 'Enable', 'Off');
    case 2
        set(handles.editJednU5, 'Enable', 'Off');
        set(handles.editKontU5, 'Enable', 'On');
    case 3
        set(handles.editJednU5, 'Enable', 'On');
        set(handles.editKontU5, 'Enable', 'On');
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenuDruh5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenuDruh5


% --- Executes during object creation, after setting all properties.
function popupmenuDruh5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenuDruh5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editJednU5_Callback(hObject, eventdata, handles)
% hObject    handle to editJednU5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editJednU5 as text
%        str2double(get(hObject,'String')) returns contents of editJednU5 as a double


% --- Executes during object creation, after setting all properties.
function editJednU5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editJednU5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editKontU5_Callback(hObject, eventdata, handles)
% hObject    handle to editKontU5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editKontU5 as text
%        str2double(get(hObject,'String')) returns contents of editKontU5 as a double


% --- Executes during object creation, after setting all properties.
function editKontU5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editKontU5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk51_Callback(hObject, eventdata, handles)
% hObject    handle to editk51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk51 as text
%        str2double(get(hObject,'String')) returns contents of editk51 as a double


% --- Executes during object creation, after setting all properties.
function editk51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk52_Callback(hObject, eventdata, handles)
% hObject    handle to editk52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk52 as text
%        str2double(get(hObject,'String')) returns contents of editk52 as a double


% --- Executes during object creation, after setting all properties.
function editk52_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk53_Callback(hObject, eventdata, handles)
% hObject    handle to editk53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk53 as text
%        str2double(get(hObject,'String')) returns contents of editk53 as a double


% --- Executes during object creation, after setting all properties.
function editk53_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk54_Callback(hObject, eventdata, handles)
% hObject    handle to editk54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk54 as text
%        str2double(get(hObject,'String')) returns contents of editk54 as a double


% --- Executes during object creation, after setting all properties.
function editk54_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk55_Callback(hObject, eventdata, handles)
% hObject    handle to editk55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk55 as text
%        str2double(get(hObject,'String')) returns contents of editk55 as a double


% --- Executes during object creation, after setting all properties.
function editk55_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV1_Callback(hObject, eventdata, handles)
% hObject    handle to editV1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV1 as text
%        str2double(get(hObject,'String')) returns contents of editV1 as a double


% --- Executes during object creation, after setting all properties.
function editV1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV2_Callback(hObject, eventdata, handles)
% hObject    handle to editV2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV2 as text
%        str2double(get(hObject,'String')) returns contents of editV2 as a double


% --- Executes during object creation, after setting all properties.
function editV2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV3_Callback(hObject, eventdata, handles)
% hObject    handle to editV3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV3 as text
%        str2double(get(hObject,'String')) returns contents of editV3 as a double


% --- Executes during object creation, after setting all properties.
function editV3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV4_Callback(hObject, eventdata, handles)
% hObject    handle to editV4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV4 as text
%        str2double(get(hObject,'String')) returns contents of editV4 as a double


% --- Executes during object creation, after setting all properties.
function editV4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function editV5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function editV5_Callback(hObject, eventdata, handles)
% hObject    handle to editV5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV5 as text
%        str2double(get(hObject,'String')) returns contents of editV5 as a double


% --- Executes on button press in pushbuttonVygeneruj.
function pushbuttonVygeneruj_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonVygeneruj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pocet
rovnice = '';

switch pocet
    %vygenerovani rovnic pro 1 kompartment
    case 1
l1 = sprintf('x1''=');
r11=strcat('-',get(handles.editk11,'String'),'x1');
typ = get(handles.popupmenuDruh1,'Value');
    switch typ
    case 1
        rvstup=strcat('; x1(0)=',get(handles.editJednU1,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU1,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU1,'String'),'; x1(0)=',get(handles.editJednU1,'String'),';');
end
rovx1=strcat(l1,r11,rvstup);
rovnice=strcat(rovx1);
    %vygenerovani rovnic pro 2 kompartmenty
    case 2
        %rovnice pro x1
l1 = sprintf('x1''=');
cx1=num2str(-(str2double(get(handles.editk12,'String')))-(str2double(get(handles.editk11,'String'))));
rx1=strcat(cx1,'x1');
rx2=strcat('+',get(handles.editk21,'String'),'x2');
strcat(rx1,rx2);
typ = get(handles.popupmenuDruh1,'Value');
    switch typ
    case 1
        rvstup1=strcat('; x1(0)=',get(handles.editJednU1,'String'),';');
    case 2
        rvstup1=strcat('+',get(handles.editKontU1,'String'),';');
    case 3
        rvstup1=strcat('+',get(handles.editKontU1,'String'),'; x1(0)=',get(handles.editJednU1,'String'),';');
    end
rovx1=strcat(l1,rx1,rx2,rvstup1);
    
%rovnice pro x2
cx2=num2str(-(str2double(get(handles.editk21,'String')))-(str2double(get(handles.editk22,'String'))));
rx1=strcat(cx2,'x2');
rx2=strcat('+',get(handles.editk12,'String'),'x1');
strcat(rx1,rx2);
typ = get(handles.popupmenuDruh2,'Value');
    switch typ
    case 1
        rvstup2=strcat('; x2(0)=',get(handles.editJednU2,'String'),';');
    case 2
        rvstup2=strcat('+',get(handles.editKontU2,'String'),';');
    case 3
        rvstup2=strcat('+',get(handles.editKontU2,'String'),'; x2(0)=',get(handles.editJednU2,'String'),';');
    end
rovx2=strcat(rx1,rx2,rvstup2);
%slouèení
 nl2=sprintf(' \nx2''=');
 rovx1=strcat(rovx1,nl2);
rovnice=strcat(rovx1,rovx2);
%rovnice pro 3 kompartmenty
    case 3
 %rovnice pro x1
l = sprintf('x1''=');
cx=num2str(-(str2double(get(handles.editk12,'String')))-(str2double(get(handles.editk11,'String')))-(str2double(get(handles.editk13,'String'))));
rx1=strcat(cx,'x1');
rxo=strcat('+',get(handles.editk21,'String'),'x2','+',get(handles.editk31,'String'),'x3');
strcat(rx1,rxo);
typ = get(handles.popupmenuDruh1,'Value');
    switch typ
    case 1
        rvstup=strcat('; x1(0)=',get(handles.editJednU1,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU1,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU1,'String'),'; x1(0)=',get(handles.editJednU1,'String'),';');
    end
rovx1=strcat(l,rx1,rxo,rvstup);
%rovnice pro x2
cx=num2str(-(str2double(get(handles.editk22,'String')))-(str2double(get(handles.editk21,'String')))-(str2double(get(handles.editk23,'String'))));
rxo=strcat(cx,'x2');
rxi=strcat('+',get(handles.editk12,'String'),'x1','+',get(handles.editk32,'String'),'x3');
strcat(rxo,rxi);
typ = get(handles.popupmenuDruh2,'Value');
    switch typ
    case 1
        rvstup=strcat('; x2(0)=',get(handles.editJednU2,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU2,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU2,'String'),'; x2(0)=',get(handles.editJednU2,'String'),';');
    end
rovx2=strcat(rxo,rxi,rvstup);
%rovnice pro x3
cx=num2str(-(str2double(get(handles.editk32,'String')))-(str2double(get(handles.editk31,'String')))-(str2double(get(handles.editk33,'String'))));
rxo=strcat(cx,'x3');
rxi=strcat('+',get(handles.editk13,'String'),'x1','+',get(handles.editk23,'String'),'x2');
strcat(rxo,rxi);
typ = get(handles.popupmenuDruh3,'Value');
    switch typ
    case 1
        rvstup=strcat('; x3(0)=',get(handles.editJednU3,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU3,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU3,'String'),'; x3(0)=',get(handles.editJednU3,'String'),';');
    end
rovx3=strcat(rxo,rxi,rvstup);
%slouèení
 nl2=sprintf(' \nx2''=');
 nl3=sprintf(' \nx3''=');
 rovx1=strcat(rovx1,nl2);
 rovx2=strcat(rovx2,nl3);
rovnice=strcat(rovx1,rovx2,rovx3);
%rovnice pro 4 kompartmenty
    case 4
%x1
l = sprintf('x1''=');
cx=num2str(-(str2double(get(handles.editk12,'String')))-(str2double(get(handles.editk11,'String')))-(str2double(get(handles.editk14,'String')))-(str2double(get(handles.editk13,'String'))));
rxo=strcat(cx,'x1');
rxi=strcat('+',get(handles.editk21,'String'),'x2','+',get(handles.editk31,'String'),'x3','+',get(handles.editk41,'String'),'x4');
typ = get(handles.popupmenuDruh1,'Value');
    switch typ
    case 1
        rvstup=strcat('; x1(0)=',get(handles.editJednU1,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU1,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU1,'String'),'; x1(0)=',get(handles.editJednU1,'String'),';');
    end
rovx1=strcat(l,rxo,rxi,rvstup);
%x2
cx=num2str(-(str2double(get(handles.editk22,'String')))-(str2double(get(handles.editk21,'String')))-(str2double(get(handles.editk24,'String')))-(str2double(get(handles.editk23,'String'))));
rxo=strcat(cx,'x2');
rxi=strcat('+',get(handles.editk12,'String'),'x1','+',get(handles.editk32,'String'),'x3','+',get(handles.editk42,'String'),'x4');
typ = get(handles.popupmenuDruh2,'Value');
    switch typ
    case 1
        rvstup=strcat('; x2(0)=',get(handles.editJednU2,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU2,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU2,'String'),'; x2(0)=',get(handles.editJednU2,'String'),';');
    end
rovx2=strcat(rxo,rxi,rvstup);
%x3
cx=num2str(-(str2double(get(handles.editk32,'String')))-(str2double(get(handles.editk31,'String')))-(str2double(get(handles.editk34,'String')))-(str2double(get(handles.editk33,'String'))));
rxo=strcat(cx,'x3');
rxi=strcat('+',get(handles.editk13,'String'),'x1','+',get(handles.editk23,'String'),'x2','+',get(handles.editk43,'String'),'x4');
typ = get(handles.popupmenuDruh3,'Value');
    switch typ
    case 1
        rvstup=strcat('; x3(0)=',get(handles.editJednU3,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU3,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU3,'String'),'; x3(0)=',get(handles.editJednU3,'String'),';');
    end
rovx3=strcat(rxo,rxi,rvstup);
%x4
cx=num2str(-(str2double(get(handles.editk42,'String')))-(str2double(get(handles.editk41,'String')))-(str2double(get(handles.editk44,'String')))-(str2double(get(handles.editk43,'String'))));
rxo=strcat(cx,'x4');
rxi=strcat('+',get(handles.editk14,'String'),'x1','+',get(handles.editk24,'String'),'x2','+',get(handles.editk34,'String'),'x3');
typ = get(handles.popupmenuDruh4,'Value');
    switch typ
    case 1
        rvstup=strcat('; x4(0)=',get(handles.editJednU4,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU4,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU4,'String'),'; x4(0)=',get(handles.editJednU4,'String'),';');
    end
rovx4=strcat(rxo,rxi,rvstup);
%slouèení
nl2=sprintf(' \nx2''=');
nl3=sprintf(' \nx3''=');
nl4=sprintf(' \nx4''=');
rovx1=strcat(rovx1,nl2);
rovx2=strcat(rovx2,nl3);
rovx3=strcat(rovx3,nl4);
rovnice=strcat(rovx1,rovx2,rovx3,rovx4);     
%rovnice pro 5 kompartmentu
    case 5
%1
l = sprintf('x1''=');
cx=num2str(-(str2double(get(handles.editk12,'String')))-(str2double(get(handles.editk15,'String')))-(str2double(get(handles.editk11,'String')))-(str2double(get(handles.editk14,'String')))-(str2double(get(handles.editk13,'String'))));
rxo=strcat(cx,'x1');
rxi=strcat('+',get(handles.editk21,'String'),'x2','+',get(handles.editk31,'String'),'x3','+',get(handles.editk41,'String'),'x4','+',get(handles.editk41,'String'),'x5');
typ = get(handles.popupmenuDruh1,'Value');
    switch typ
    case 1
        rvstup=strcat('; x1(0)=',get(handles.editJednU1,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU1,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU1,'String'),'; x1(0)=',get(handles.editJednU1,'String'),';');
    end
rovx1=strcat(l,rxo,rxi,rvstup);
%2
cx=num2str(-(str2double(get(handles.editk22,'String')))-(str2double(get(handles.editk21,'String')))-(str2double(get(handles.editk24,'String')))-(str2double(get(handles.editk23,'String')))-(str2double(get(handles.editk25,'String'))));
rxo=strcat(cx,'x2');
rxi=strcat('+',get(handles.editk12,'String'),'x1','+',get(handles.editk32,'String'),'x3','+',get(handles.editk42,'String'),'x4','+',get(handles.editk52,'String'),'x5');
typ = get(handles.popupmenuDruh2,'Value');
    switch typ
    case 1
        rvstup=strcat('; x2(0)=',get(handles.editJednU2,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU2,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU2,'String'),'; x2(0)=',get(handles.editJednU2,'String'),';');
    end
rovx2=strcat(rxo,rxi,rvstup);
%3
cx=num2str(-(str2double(get(handles.editk32,'String')))-(str2double(get(handles.editk35,'String')))-(str2double(get(handles.editk31,'String')))-(str2double(get(handles.editk34,'String')))-(str2double(get(handles.editk33,'String'))));
rxo=strcat(cx,'x3');
rxi=strcat('+',get(handles.editk13,'String'),'x1','+',get(handles.editk23,'String'),'x2','+',get(handles.editk43,'String'),'x4','+',get(handles.editk53,'String'),'x5');
typ = get(handles.popupmenuDruh3,'Value');
    switch typ
    case 1
        rvstup=strcat('; x3(0)=',get(handles.editJednU3,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU3,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU3,'String'),'; x3(0)=',get(handles.editJednU3,'String'),';');
    end
rovx3=strcat(rxo,rxi,rvstup);
%4
cx=num2str(-(str2double(get(handles.editk42,'String')))-(str2double(get(handles.editk41,'String')))-(str2double(get(handles.editk44,'String')))-(str2double(get(handles.editk45,'String')))-(str2double(get(handles.editk43,'String'))));
rxo=strcat(cx,'x4');
rxi=strcat('+',get(handles.editk14,'String'),'x1','+',get(handles.editk24,'String'),'x2','+',get(handles.editk34,'String'),'x3','+',get(handles.editk54,'String'),'x5');
typ = get(handles.popupmenuDruh4,'Value');
    switch typ
    case 1
        rvstup=strcat('; x4(0)=',get(handles.editJednU4,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU4,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU4,'String'),'; x4(0)=',get(handles.editJednU4,'String'),';');
    end
rovx4=strcat(rxo,rxi,rvstup);
%5
cx=num2str(-(str2double(get(handles.editk52,'String')))-(str2double(get(handles.editk51,'String')))-(str2double(get(handles.editk54,'String')))-(str2double(get(handles.editk55,'String')))-(str2double(get(handles.editk53,'String'))));
rxo=strcat(cx,'x5');
rxi=strcat('+',get(handles.editk15,'String'),'x1','+',get(handles.editk25,'String'),'x2','+',get(handles.editk35,'String'),'x3','+',get(handles.editk45,'String'),'x4');
typ = get(handles.popupmenuDruh5,'Value');
    switch typ
    case 1
        rvstup=strcat('; x5(0)=',get(handles.editJednU5,'String'),';');
    case 2
        rvstup=strcat('+',get(handles.editKontU5,'String'),';');
    case 3
        rvstup=strcat('+',get(handles.editKontU5,'String'),'; x5(0)=',get(handles.editJednU5,'String'),';');
    end
rovx5=strcat(rxo,rxi,rvstup);
%slouceni
nl2=sprintf(' \nx2''=');
nl3=sprintf(' \nx3''=');
nl4=sprintf(' \nx4''=');
nl5=sprintf(' \nx5''=');
rovx1=strcat(rovx1,nl2);
rovx2=strcat(rovx2,nl3);
rovx3=strcat(rovx3,nl4);
rovx4=strcat(rovx4,nl5);
rovnice=strcat(rovx1,rovx2,rovx3,rovx4,rovx5);  
end
set(handles.rovnice,'string',rovnice);



function editCas_Callback(hObject, eventdata, handles)
% hObject    handle to editCas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCas as text
%        str2double(get(hObject,'String')) returns contents of editCas as a double


% --- Executes during object creation, after setting all properties.
function editCas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
