MyString = {}
--[[去除str中的所有空格。返回去除空格后的字符串--]]    
MyString["Trim"] = function(str)
    str = string.gsub(str, " ", "")
        return str
    end

--[[判断str是否以substr开头。是返回true，否返回false--]]
MyString["StartSwith"] = function(str, substr)
    if string.find(str, substr) ~= 1 then
        return false
    else
        return true
    end
end

--[[判断str是否以substr结尾。是返回true，否返回false--]]
MyString["EndSwith"] = function(str, substr)
    local StrTmp = string.reverse(str)
    local SubstrTmp = string.reverse(substr)
    if string.find(StrTmp, SubstrTmp) ~= 1 then
        return false
    else
        return true
    end
end
--[[将str以sep为拆分，存在一个表中，返回该表--]]
MyString["Split"] = function(str, sep )
    local StrTmp = {}
    local i = 1
    for StrSplit in string.gmatch(str,"([^"..sep.."]+)") do
        StrTmp[i] = StrSplit
        i = i + 1
    end
    return StrTmp
end

print(MyString.Trim("asda fagd  ada "))

print(MyString.EndSwith("asda fagd  ada ", "da "))
print(MyString.EndSwith("asda fagd  ada ", "da"))
print(str_tmp)
print(substr_tmp)

print(MyString.StartSwith("asda fagd  ada ", "asda"))
print(MyString.StartSwith("asda fagd  ada ", "ada"))

SplitTab = MyString.Split("as:fd:3:4", ":")

for k,v in pairs(SplitTab) do
    print(v)
end