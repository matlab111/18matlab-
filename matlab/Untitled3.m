L1=304.8;L2=101.6;L3=254.0;L4=177.8;      %给定已知量，各杆长L1,L2,L3,L4
th2=[0:1/6:2]*pi;                          %曲柄输入角度从0至360度，步长为pi/6
th34=zeros(length(th2),2);%建立一个N行2列的零矩阵，第一列存放options=optimset('display','off');              %θ_3,第二列存放θ_3
options=optimset('display','off');              %θ_3,第二列存放θ_3
for m=1:length(th2)                        %建立for循环，求解θ_3，θ_4
th34(m,:)=fsolve('fourbarposition',[1 1],...      %调用fsove函数求解关于θ_3，θ_4
options,th2(m),L2,L3,L4,L1);                %的非线性超越方程，结果保存在th34中
end
y=L2*sin(th2)+L3*sin(th34(:,1)');            %连杆3的D端点Y坐标值
x=L2*cos(th2)+L3*cos(th34(:,1)');           %连杆3的D端点X坐标值
xx=[L2*cos(th2)];                         %连杆3的C端点X坐标值                                                                  
yy=[L2*sin(th2)];                         %连杆3的C端点Y坐标值
figure(1)
plot([x;xx],[y;yy],'k',[0 L1],[0 0],...          %绘制连杆3的几个位置点
'k--^',x,y,'ko',xx,yy,'ks')
title('连杆3的几个位置点')
xlabel('水平方向')
ylabel('垂直方向')
axis equal                                %XY坐标均衡
th2=[0:2/72:2]*pi;                         %重新细分曲柄输入角度θ_2，步长为5度
th34=zeros(length(th2),2);
options=optimset('display','off');
for m=1:length(th2)
th34(m,:)=fsolve('fourbarposition',[1 1],...
options,th2(m),L2,L3,L4,L1);
end
figure(2)
plot(th2*180/pi,th34(:,1),th2*180/pi,th34(:,2))   %绘制连杆3的角位移关于曲柄2的角位移图
plot(th2*180/pi,th34(:,1)*180/pi,...
th2*180/pi,th34(:,2)*180/pi)             %绘制摇杆4的角位移关于曲柄2的角位移图
axis([0 360 0 170])                         %确定XY边界值
grid                                     %图形加网格
xlabel('主动件转角\theta_2(度)')
ylabel('从动件角位移(度)')
title('角位移线图')
text(120,120,'摇杆4角位移')
text(150,40,'连杆3角位移')
w2=250;                                 %设定曲柄角速度
for i=1:length(th2)
A=[-L3*sin(th34(i,1)) L4*sin(th34(i,2));...
 L3*cos(th34(i,1)) -L4*cos(th34(i,2))];
B=[w2*L2*sin(th2(i)); -w2*L2*cos(th2(i))];
w=inv(A)*B;
w3(i)=w(1);
w4(i)=w(2);
end
figure(3)
plot(th2*180/pi,w3,th2*180/pi,w4);           %绘制角速度线图
axis([0 360 -175 200])                                                   
text(50,160,'摇杆4角速度(\omega_4)')
text(220,130,'连杆3角速度(\omega_3)')
grid
xlabel('主动件转角\theta_2(度)')
ylabel('从动件角速度(rad\cdot s^{-1})')
title('角速度线图')
for i=1:length(th2)
C=[-L3*sin(th34(i,1)) L4*sin(th34(i,2));...
L3*cos(th34(i,1)) -L4*cos(th34(i,2))];
D=[w2^2*L2*cos(th2(i))+w3(i)^2*L3*cos(th34(i,1))-w4(i)^2*L4*cos(th34(i,2));...
 w2^2*L2*sin(th2(i))+w3(i)^2*L3*sin(th34(i,1))-w4(i)^2*L4*sin(th34(i,2))];
a=inv(C)*D;
a3(i)=a(1);
a4(i)=a(2);
end
figure(4)
plot(th2*180/pi,a3,th2*180/pi,a4);            %绘制角加速度线图
axis([0 360 -70000 65000])
text(50,50000,'摇杆4角加速度(\alpha_4)')
text(220,12000,'连杆3角加速度(\alpha_3)')
grid
xlabel('从动件角加速度')
ylabel('从动件角加速度(rad\cdot s^{-2})')
title('角加速度线图')
disp '曲柄转角 连杆转角-摇杆转角-连杆角速度-摇杆角速度-连杆加速度-摇杆加速度'      %输出：四杆机构一个运动周期内角位移，角速度，角加速度数据
ydcs=[th2'*180/pi,th34(:,1)*180/pi,th34(:,2)*180/pi,w3',w4',a3',a4'];
disp(ydcs)