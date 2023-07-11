--- @alias PingoEvent # More to be added maybe
--- |'setup'
--- |'pin'
--- |'show'
--- |'hide'
--- |'update'
--- |'go'
--- |'clear'
--- | PingoTraverseEvent
--- | PingoTelescopeEvent
--- | PingoContextEvent
--- @alias PingoEventParam PingoEvent|PingoEvent[]
--- @alias PingoEventData {} # TODO

--- @type table<PingoEvent, fun(data: PingoEventData)[]>
local callbacks = {}

local M = {}

function M.update(winnr)
	M.runCallback('update', {})
end

function M.updateWindow(winnr)
end

function M.createWindow(winnr)
end

--- @param event PingoEventParam
--- @param func fun(data: PingoEventData)
function M.registerCallback(event, func)
	if type(event) == 'table' then
		for i = 1, #event do
			M.registerCallback(event[i], func)
		end
		return
	end
	if not callbacks[event] then callbacks[event] = {} end
	callbacks[event][#callbacks[event] + 1] = func
end

--- @param event PingoEvent
function M.runCallback(event, data)
	if not callbacks[event] then return end
	for i = 1, #callbacks[event] do
		callbacks[event][i](data)
	end
end

return M
