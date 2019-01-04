L1=304.8;L2=101.6;L3=254.0;L4=177.8;      %������֪�������˳�L1,L2,L3,L4
th2=[0:1/6:2]*pi;                          %��������Ƕȴ�0��360�ȣ�����Ϊpi/6
th34=zeros(length(th2),2);%����һ��N��2�е�����󣬵�һ�д��options=optimset('display','off');              %��_3,�ڶ��д�Ŧ�_3
options=optimset('display','off');              %��_3,�ڶ��д�Ŧ�_3
for m=1:length(th2)                        %����forѭ��������_3����_4
th34(m,:)=fsolve('fourbarposition',[1 1],...      %����fsove���������ڦ�_3����_4
options,th2(m),L2,L3,L4,L1);                %�ķ����Գ�Խ���̣����������th34��
end
y=L2*sin(th2)+L3*sin(th34(:,1)');            %����3��D�˵�Y����ֵ
x=L2*cos(th2)+L3*cos(th34(:,1)');           %����3��D�˵�X����ֵ
xx=[L2*cos(th2)];                         %����3��C�˵�X����ֵ                                                                  
yy=[L2*sin(th2)];                         %����3��C�˵�Y����ֵ
figure(1)
plot([x;xx],[y;yy],'k',[0 L1],[0 0],...          %��������3�ļ���λ�õ�
'k--^',x,y,'ko',xx,yy,'ks')
title('����3�ļ���λ�õ�')
xlabel('ˮƽ����')
ylabel('��ֱ����')
axis equal                                %XY�������
th2=[0:2/72:2]*pi;                         %����ϸ����������ǶȦ�_2������Ϊ5��
th34=zeros(length(th2),2);
options=optimset('display','off');
for m=1:length(th2)
th34(m,:)=fsolve('fourbarposition',[1 1],...
options,th2(m),L2,L3,L4,L1);
end
figure(2)
plot(th2*180/pi,th34(:,1),th2*180/pi,th34(:,2))   %��������3�Ľ�λ�ƹ�������2�Ľ�λ��ͼ
plot(th2*180/pi,th34(:,1)*180/pi,...
th2*180/pi,th34(:,2)*180/pi)             %����ҡ��4�Ľ�λ�ƹ�������2�Ľ�λ��ͼ
axis([0 360 0 170])                         %ȷ��XY�߽�ֵ
grid                                     %ͼ�μ�����
xlabel('������ת��\theta_2(��)')
ylabel('�Ӷ�����λ��(��)')
title('��λ����ͼ')
text(120,120,'ҡ��4��λ��')
text(150,40,'����3��λ��')
w2=250;                                 %�趨�������ٶ�
for i=1:length(th2)
A=[-L3*sin(th34(i,1)) L4*sin(th34(i,2));...
 L3*cos(th34(i,1)) -L4*cos(th34(i,2))];
B=[w2*L2*sin(th2(i)); -w2*L2*cos(th2(i))];
w=inv(A)*B;
w3(i)=w(1);
w4(i)=w(2);
end
figure(3)
plot(th2*180/pi,w3,th2*180/pi,w4);           %���ƽ��ٶ���ͼ
axis([0 360 -175 200])                                                   
text(50,160,'ҡ��4���ٶ�(\omega_4)')
text(220,130,'����3���ٶ�(\omega_3)')
grid
xlabel('������ת��\theta_2(��)')
ylabel('�Ӷ������ٶ�(rad\cdot s^{-1})')
title('���ٶ���ͼ')
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
plot(th2*180/pi,a3,th2*180/pi,a4);            %���ƽǼ��ٶ���ͼ
axis([0 360 -70000 65000])
text(50,50000,'ҡ��4�Ǽ��ٶ�(\alpha_4)')
text(220,12000,'����3�Ǽ��ٶ�(\alpha_3)')
grid
xlabel('�Ӷ����Ǽ��ٶ�')
ylabel('�Ӷ����Ǽ��ٶ�(rad\cdot s^{-2})')
title('�Ǽ��ٶ���ͼ')
disp '����ת�� ����ת��-ҡ��ת��-���˽��ٶ�-ҡ�˽��ٶ�-���˼��ٶ�-ҡ�˼��ٶ�'      %������ĸ˻���һ���˶������ڽ�λ�ƣ����ٶȣ��Ǽ��ٶ�����
ydcs=[th2'*180/pi,th34(:,1)*180/pi,th34(:,2)*180/pi,w3',w4',a3',a4'];
disp(ydcs)