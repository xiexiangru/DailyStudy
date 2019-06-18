local lfs = require "lfs"

function PrintDir(rootPath)
    for entry in lfs.dir(rootPath) do
        if entry~='.' and entry~='..' then
            local path = rootPath.."\\"..entry
            local attr = lfs.attributes(path)
            assert(type(attr)=="table") --如果获取不到属性表则报错
            if(attr.mode == "directory") then
                print("Dir:",path)
            elseif attr.mode=="file" then
                print("File:",path)
            end
        end
    end
end

local rootPath = lfs.currentdir()
print(rootPath)
PrintDir(rootPath)