function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 16-Dec-2018 15:38:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
user_entry=str2double(get(hObject,'String'));
if isnan(user_entry)
    errordlg('请输入数值！','Bad Input')
end
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
user_entry=str2double(get(hObject,'String'));
if isnan(user_entry)
    errordlg('请输入数值！','Bad Input')
end
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



function edit3_Callback(hObject, eventdata, handles)
user_entry=str2double(get(hObject,'String'));
if isnan(user_entry)
    errordlg('请输入数值！','Bad Input')
end
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
user_entry=str2double(get(hObject,'String'));
if isnan(user_entry)
    errordlg('请输入数值！','Bad Input')
end
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
user_entry=str2double(get(hObject,'String'));
if isnan(user_entry)
    errordlg('请输入数值！','Bad Input')
end
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


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
L1=str2double(get(handles.edit1,'String'));
L2=str2double(get(handles.edit2,'String'));
L3=str2double(get(handles.edit3,'String'));
L4=str2double(get(handles.edit4,'String'));
w2=str2double(get(handles.edit5,'String'));
th2=[0:2/72:2]*pi; 
th34=zeros(length(th2),2);
options=optimset('display','off');
for m=1:length(th2)
th34(m,:)=fsolve('fourbarposition',[1 1],options,th2(m),L2,L3,L4,L1);
end
w2=250;
for i=1:length(th2)
A=[-L3*sin(th34(i,1)) L4*sin(th34(i,2)); L3*cos(th34(i,1)) -L4*cos(th34(i,2))];
B=[w2*L2*sin(th2(i)); -w2*L2*cos(th2(i))];
w=inv(A)*B;
 w3(i)=w(1);
w4(i)=w(2);
end
for i=1:length(th2)
C=[-L3*sin(th34(i,1)) L4*sin(th34(i,2));L3*cos(th34(i,1)) -L4*cos(th34(i,2))];
D=[w2^2*L2*cos(th2(i))+w3(i)^2*L3*cos(th34(i,1))-w4(i)^2*L4*cos(th34(i,2));...
   w2^2*L2*sin(th2(i))+w3(i)^2*L3*sin(th34(i,1))-w4(i)^2*L4*sin(th34(i,2))];
a=inv(C)*D;
a3(i)=a(1);
a4(i)=a(2);
end
val=get(hObject,'Value');
str=get(hObject,'String');
switch str{val}
case '连杆3的几个位置点'
th2=[0:1/6:2]*pi;
     th34=zeros(length(th2),2);
     options=optimset('display','off');
     for m=1:length(th2)
          th34(m,:)=fsolve('fourbarposition',[1 1],options,th2(m),L2,L3,L4,L1);
     end
     y=L2*sin(th2)+L3*sin(th34(:,1)');
     x=L2*cos(th2)+L3*cos(th34(:,1)');
     xx=[L2*cos(th2)];                                                                                                                 
     yy=[L2*sin(th2)];
     plot([x;xx],[y;yy],'k',[0 L1],[0 0],'k--^',x,y,'ko',xx,yy,'ks')
     title('连杆3的几个位置点')
     xlabel('水平方向')
     ylabel('垂直方向')
     axis equal
     grid on
case '角位移线图'
     plot(th2*180/pi,th34(:,1)*180/pi,th2*180/pi,th34(:,2)*180/pi)
     axis([0 360 0 170])
     grid  on
     xlabel('主动件转角\theta_2(度)')
     ylabel('从动件角位移(度)')
     title('角位移线图')
     text(120,120,'摇杆4角位移')
     text(150,40,'连杆3角位移')
case '角速度线图'
     plot(th2*180/pi,w3,th2*180/pi,w4);
     axis([0 360 -175 200])
     text(50,160,'摇杆4角速度(\omega_4)')
     text(220,130,'连杆3角速度(\omega_3)')
     grid on
     xlabel('主动件转角\theta_2(度)')
     ylabel('从动件角速度(rad\cdot s^{-1})')
     title('角速度线图')
case '角加速度线图'
plot(th2*180/pi,a3,th2*180/pi,a4); 
     axis([0 360 -50000 65000])
     text(50,50000,'摇杆4角加速度(\alpha_4)')
     text(220,12000,'连杆3角加速度(\alpha_3)')
     grid on
     xlabel('主动件转角\theta_2(度)')
     ylabel('从动件角加速度(rad\cdot s^{-2})')
     title('角加速度线图')
end
guidata(hObject,handles)
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


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
file = uigetfile('*.fig');
if ~isequal(file, 0)
    open(file);
end
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
printdlg(handles.figure1)                                         %用于图形输出。
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
selection = questdlg(['Close ' get(handles.figure1,'Name') '?'],...
                 ['Close ' get(handles.figure1,'Name') '...'],'Yes','No','Yes');
if strcmp(selection,'No')
    return;
end
delete(handles.figure1)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global d1 d2 d3 d4 angle t1 tt xa ya xb yb xc yc xd yd line_ab line_cb line_cd line_ad

d1=str2double(get(handles.edit1,'string')); 
d2=str2double(get(handles.edit2,'string')); 
d3=str2double(get(handles.edit3,'string')); 
d4=str2double(get(handles.edit4,'string')); 



angle=0;
alpha=0:pi/100:2*pi;
alpha=alpha';
tt=length(alpha);

xa=zeros(tt,1);
ya=zeros(tt,1);

xb=d1*cos(alpha);
yb=d1*sin(alpha);

xd=d4*ones(tt,1);
yd=zeros(tt,1);

d5=sqrt((xb-xd).^2+(yb-yd).^2);
beta1=acos((d4^2+d5.^2-d1^2)./(2*d5*d4));
beta2=acos((d3^2+d5.^2-d2^2)./(2*d3*d4));
beta=pi-beta1-beta2;
beta=real(beta);

xc=xd+d3*cos(beta);
yc=yd+d3*sin(beta);

axes(handles.axes1);
axis([-30 30 -30 30]);


dian_a=line ('linestyle',':','linewidth',2,'markersize',5,'erasemode','xor','markeredgecolor','k','markerfacecolor','w');
set(dian_a,'xdata',xa(1,:),'ydata',ya(1,:));

dian_b=line ('linestyle',':','linewidth',2,'markersize',5,'erasemode','xor','markeredgecolor','k','markerfacecolor','w');
set(dian_b,'xdata',xb(1,:),'ydata',yb(1,:));

dian_c=line ('linestyle',':','linewidth',2,'markersize',5,'erasemode','xor','markeredgecolor','k','markerfacecolor','w');
set(dian_c,'xdata',xc(1,:),'ydata',yc(1,:));

dian_d=line ('linestyle',':','linewidth',2,'markersize',5,'erasemode','xor','markeredgecolor','k','markerfacecolor','w');
set(dian_d,'xdata',xd(1,:),'ydata',yd(1,:));

line_ab=line ('linestyle','-','erasemode','xor');
set(line_ab,'xdata',[xa(1,:),xb(1,:)],'ydata',[ya(1,:),yb(1,:)]);

line_cb=line ('linestyle','-','erasemode','xor');
set(line_cb,'xdata',[xc(1,:),xb(1,:)],'ydata',[yc(1,:),yb(1,:)]);

line_cd=line ('linestyle','-','erasemode','xor');
set(line_cd,'xdata',[xc(1,:),xd(1,:)],'ydata',[yc(1,:),yd(1,:)]);

line_ad=line ('linestyle','-','erasemode','xor');
set(line_ad,'xdata',[xa(1,:),xd(1,:)],'ydata',[ya(1,:),yd(1,:)]);
set(handles.pushbutton2,'enable','on');


t1=timer('TimerFcn',@TimerFcn,'Period',0.05,'ExecutionMode','fixedrate');
stop(t1);




function TimerFcn(obj, event)
global angle tt
angle=angle+1;
    if angle>tt
        angle=1;
    end   
motionsimulation(angle);

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
set(handles.pushbutton3,'enable','on');
set(handles.pushbutton4,'enable','on');
set(handles.pushbutton5,'enable','on');
set(handles.pushbutton6,'enable','on');
global t1 
start(t1);

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
global t1 
stop(t1);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
global t1 
stop(t1);
start(t1);
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
global t1 angle tt
angle=angle+1;
    if angle>tt-1
        angle=1;
    end
motionsimulation(angle);
stop(t1);
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
global t1 angle tt
angle=angle-1;
    if angle==1
        angle=tt;
    end
motionsimulation(angle);
stop(t1);
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
