SquareClass = {area = 0, primeter = 0, lenth = 0}

function SquareClass:new(o, lenth)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.lenth = lenth or 0
	self.area = lenth*lenth
	self.primeter = lenth*4
	return o
end

function SquareClass:PrintArea(...)
	print("面积为:", self.area)
end
function SquareClass:PrintPrimeter(...)
	print("周长为:", self.primeter)
end