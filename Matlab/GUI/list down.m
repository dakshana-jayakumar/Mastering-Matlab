function varargout = ex6(varargin)
% EX6 MATLAB code for ex6.fig
%      EX6, by itself, creates a new EX6 or raises the existing
%      singleton*.
%
%      H = EX6 returns the handle to a new EX6 or the handle to
%      the existing singleton*.
%
%      EX6('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EX6.M with the given input arguments.
%
%      EX6('Property','Value',...) creates a new EX6 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ex6_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ex6_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ex6

% Last Modified by GUIDE v2.5 06-Sep-2020 19:35:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ex6_OpeningFcn, ...
                   'gui_OutputFcn',  @ex6_OutputFcn, ...
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


% --- Executes just before ex6 is made visible.
function ex6_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ex6 (see VARARGIN)

% Choose default command line output for ex6
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ex6 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ex6_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1

val =get(hObject,'Value')

switch val
    
    case 1
        a=imread('cameraman.tif');
        axes(handles.axes1);
        imshow(a)
    case 2 
        a=imread('rice.png');
        axes(handles.axes1);
        imshow(a)
    case 3
        a=imread('coins.png');
        axes(handles.axes1);
        imshow(a)
    otherwise
        a=ones(256,256);
        axes(handles.axes1);
        imshow(a)
end



% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
