clear;
clc;
[fn,pn]=uigetfile({'*.txt'},'ѡ��һ���ļ�');
if fn~=0
f=fopen(strcat(pn,fn),'r');
data=fread(f,inf,'*char');
fclose(f);
% data=data';
% length(data)
% strcmp(data,' ')
[a b]=size(data);
% for i=1:a
%     A(1,i)=data(i);
% end

k=isspace(data);
%�ַ���ͳ��

% for i=1:a
%     if k(i)==0
%         tj01=tj01+1;
%     end
% end
tj01=length(find(k==0));
%������ͳ��
tj02=0;
h=find(k==0);
for i=h(1):a-1
    if k(i)==1 && k(i+1)==1
        k(i)=0;
    end
end
h0=find(k==0);
tj02=length(find(k(h0(1):end)==1));
% Stringbuffer(data)
% strfind(data,'sdas')
tj03=0;
for i=1:a
    if data(i)=='.'
    tj03=tj03+1;
    end
end





% str=inputdlg('������Ҫͳ�Ƶĵ���','�Ի���',1);
% if ~isempty(str)
% n=length(regexp(data,strcat('(?<=\W+)',str{1},'(?=\W+)')));
% msgbox(sprintf('�ļ��й���%d���ַ���%s',n,str{1}));
% end
end
% aa=['�ļ��й���%d���ַ���%s',tj01,'�ļ��й���%d��������%s',tj02,'�ļ��й���%d��������%s',tj03]
o1=sprintf('�ļ��й���%d���ַ���%s',tj01);
o2=sprintf('�ļ��й���%d��������%s',tj02);
o3=sprintf('�ļ��й���%d������%s',tj03);
msgbox({o1,...
       o2,...
        o3},'ͳ�ƽ��');