local inputCls = require("INPUTcls")

local inputTable = {}

function inputTable:new( objTable )
	local o = {}

	o.grp = display.newGroup( )

	local DXC = display.contentCenterX
	local startY = 800
	local stepY = 0

	local items = {}

	for i,v in ipairs(objTable) do
		items[i] = inputCls:new(o.grp, DXC, startY + stepY, v)
		stepY = stepY + items[i].stepY
	end


	setmetatable( o, self )
	self.__index = self
	return o
end

return inputTable