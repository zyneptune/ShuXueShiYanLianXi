function Str2 = InputNum(num,str)
%INPUTNUM ���ַ���β��������
% 
if strcmp(str,'0') == 1
    Str2 = num2str(num);
else
    Str2 = strcat(str,num2str(num));
end
end

