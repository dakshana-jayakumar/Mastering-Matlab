function varargout = ex2(varargin)
% EX2 MATLAB code for ex2.fig
%      EX2, by itself, creates a new EX2 or raises the existing
%      singleton*.
%
%      H = EX2 returns the handle to a new EX2 or the handle to
%      the existing singleton*.
%
%      EX2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EX2.M with the given input arguments.
%
%      EX2('Property','Value',...) creates a new EX2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ex2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ex2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ex2

% Last Modified by GUIDE v2.5 06-Sep-2020 19:06:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ex2_OpeningFcn, ...
                   'gui_OutputFcn',  @ex2_OutputFcn, ...
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


% --- Executes just before ex2 is made visible.
function ex2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ex2 (see VARARGIN)

% Choose default command line output for ex2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ex2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ex2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in SWITCH.
function SWITCH_Callback(hObject, eventdata, handles)
% hObject    handle to SWITCH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of SWITCH

A=get(hObject,'Value');
if A ==0
    a=ones(256,256);
    axes(handles.axes1);
    imshow(a)
else
    a=imread('cameraman.tif');
    axes(handles.axes1);
    imshow(a)
    
    
end
