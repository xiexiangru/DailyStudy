MyString = {}
--[[ȥ��str�е����пո񡣷���ȥ���ո����ַ���--]]    
MyString["Trim"] = function(str)
    str = string.gsub(str, " ", "")
        return str
    end

--[[�ж�str�Ƿ���substr��ͷ���Ƿ���true���񷵻�false--]]
MyString["StartSwith"] = function(str, substr)
    if string.find(str, substr) ~= 1 then
        return false
    else
        return true
    end
end

--[[�ж�str�Ƿ���substr��β���Ƿ���true���񷵻�false--]]
MyString["EndSwith"] = function(str, substr)
    local StrTmp = string.reverse(str)
    local SubstrTmp = string.reverse(substr)
    if string.find(StrTmp, SubstrTmp) ~= 1 then
        return false
    else
        return true
    end
end
--[[��str��sepΪ��֣�����һ�����У����ظñ�--]]
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