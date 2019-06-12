MyString={}
--[[去除str中的所有空格。返回去除空格后的字符串--]]    
MyString["trim"]= function (str)
        str = string.gsub(str, " ", "")
        return str
    end

--[[判断str是否以substr开头。是返回true，否返回false--]]
MyString["startswith"] = function(str, substr)
        if string.find(str, substr) ~= 1 then
            return false
        else
            return true
        end
    end

--[[判断str是否以substr结尾。是返回true，否返回false--]]
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
