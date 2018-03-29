function Str2 = InputOperator(operator,str)
%INPUTOPERATOR 在字符串后加运算符号
%str 是数，operator是符号
if isempty(strfind(str,operator)) == 1
        if strcmp(operator,'.') == 1 %小数点
            Str2= strcat(str,operator);
        end
        
        if strcmp(operator,'.0') == 1 %小数点后加0
            if isempty(strfind(str,'.')) == 1
                Str2= strcat(str,'.0');
            else
                Str2 = strcat(str,'0');
            end
            
        end
        
        if isempty(strfind(operator,'+-*/')) ~= 1
            Str2 = strcat(str,operator);
        end
        
        
 else
        Str2 = str;
 end
end

