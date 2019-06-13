Timer = {}

local timerCount = 0

Timer.New = function (self, id, interval, cb)
	self._id = id
	self._interval = interval
	self._cb = cb
	return self
end

Timer.Call = function (self, dt)
	timerCount = timerCount + dt
	if timerCount >= self._interval then
		timerCount = 0
		self._cb()
	end
end

--[[Timer.Destroy = function (self)
	self._id = false
	self._interval = false
	self._cb = false
end--]]

return Timer