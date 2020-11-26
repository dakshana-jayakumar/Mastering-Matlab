function varargout = ex8(varargin)
% EX8 MATLAB code for ex8.fig
%      EX8, by itself, creates a new EX8 or raises the existing
%      singleton*.
%
%      H = EX8 returns the handle to a new EX8 or the handle to
%      the existing singleton*.
%
%      EX8('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EX8.M with the given input arguments.
%
%      EX8('Property','Value',...) creates a new EX8 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ex8_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ex8_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ex8

% Last Modified by GUIDE v2.5 06-Sep-2020 21:23:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ex8_OpeningFcn, ...
                   'gui_OutputFcn',  @ex8_OutputFcn, ...
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


% --- Executes just before ex8 is made visible.
function ex8_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ex8 (see VARARGIN)

% Choose default command line output for ex8
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ex8 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ex8_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in browse.
function browse_Callback(hObject, eventdata, handles)
% hObject    handle to browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 [filename, pathname] = uigetfile('*.*', 'Pick a MATLAB code file');
    if isequal(filename,0) || isequal(pathname,0)
       warndlg('User pressed cancel')
    else
       a=imread(strcat(pathname,filename));
       axes(handles.axes1);
       imshow(a);
        handles.a=a;
        
        
    end
 
    % Update handles structure
guidata(hObject, handles);


% --- Executes on button press in addnoise.
function addnoise_Callback(hObject, eventdata, handles)
% hObject    handle to addnoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=handles.a;
         J = imnoise(a,'salt & pepper', 0.02);

axes(handles.axes2);
imshow(J);
handles.J=J;
% Update handles structure
guidata(hObject, handles);



% --- Executes on button press in median.
function median_Callback(hObject, eventdata, handles)
% hObject    handle to median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

J=handles.J
        K = medfilt2(J);
        axes(handles.axes3);
         imshow(K)
