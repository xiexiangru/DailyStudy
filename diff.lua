local lfs = require "lfs"

local pathA = "C:/Users/QTZ/Desktop/lua_study/6.12"
local pathB = "C:/Users/QTZ/Desktop/lua_study/test"
--print(PathA, PathB )

local a = {}
local b = {}
for entryA in lfs.dir(pathA) do
	if entryA ~= '.' and entryA ~= '..' then
		table.insert(a, entryA)
	end
end

for entryB in lfs.dir(pathB) do
	if entryB ~= '.' and entryB ~=  '..' then
		-- print(entryB)
		table.insert(b, entryB)
	end
end

for k,v in pairs(a) do
	for k1,v1 in pairs(b) do
		if a[k] ~= b[k1] then
			print(a[k])
		end
	end
end