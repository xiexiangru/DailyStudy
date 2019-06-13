SquareClass = {area=0, lenth=0}

function SquareClass:new(o, lenth)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.lenth = lenth or 0
	self.area = lenth*lenth
	return o
end

function SquareClass:PrintArea(  )
	print("面积为:", self.area)
end