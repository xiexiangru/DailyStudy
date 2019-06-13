require "timer"
local timerId = 0
TimerManager = {}

TimerManager.New = function (self)
	self._timerList = {}
end

--AddTimer
TimerManager.AddTimer = function (self, interval, cb)
	timerId = timerId + 1
	self._timerList[timerId] = Timer:New(timerId, interval, cb)
	return timerId
end

--RemoveTimer
TimerManager.RemoveTimer = function (self, timerId)
	--self._timerList[timerId]:Destroy()
	self._timerList[timerId] = nil
end 

TimerManager.Update = function (self, dt)
	for id, timer in pairs(self._timerList) do
		timer:Call(dt)
	end	
end

return TimerManager