clear;
clc;
[fn,pn]=uigetfile({'*.txt'},'选择一个文件');
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
%字符数统计

% for i=1:a
%     if k(i)==0
%         tj01=tj01+1;
%     end
% end
tj01=length(find(k==0));
%单词数统计
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





% str=inputdlg('请输入要统计的单词','对话框',1);
% if ~isempty(str)
% n=length(regexp(data,strcat('(?<=\W+)',str{1},'(?=\W+)')));
% msgbox(sprintf('文件中共有%d个字符数%s',n,str{1}));
% end
end
% aa=['文件中共有%d个字符数%s',tj01,'文件中共有%d个单词数%s',tj02,'文件中共有%d个句子数%s',tj03]
o1=sprintf('文件中共有%d个字符数%s',tj01);
o2=sprintf('文件中共有%d个单词数%s',tj02);
o3=sprintf('文件中共有%d个句子%s',tj03);
msgbox({o1,...
       o2,...
        o3},'统计结果');