MyString={}
--[[ȥ��str�е����пո񡣷���ȥ���ո����ַ���--]]    
MyString["trim"]= function (str)
        str = string.gsub(str, " ", "")
        return str
    end

--[[�ж�str�Ƿ���substr��ͷ���Ƿ���true���񷵻�false--]]
MyString["startswith"] = function(str, substr)
        if string.find(str, substr) ~= 1 then
            return false
        else
            return true
        end
    end

--[[�ж�str�Ƿ���substr��β���Ƿ���true���񷵻�false--]]
MyString["endswith"] = function(str, substr)
        str_tmp = string.reverse(str)
        substr_tmp = string.reverse(substr)
        if string.find(str_tmp, substr_tmp) ~= 1 then
            return false
        else
            return true
        end
    end

print(MyString.trim("asda fagd  ada "))

print(MyString.endswith("asda fagd  ada ","da "))
print(MyString.endswith("asda fagd  ada ","da"))

print(MyString.startswith("asda fagd  ada ","asda"))
print(MyString.startswith("asda fagd  ada ","ada"))
