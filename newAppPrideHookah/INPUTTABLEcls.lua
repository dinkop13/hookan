local inputCls = require("INPUTcls")
local widget = require( "widget" )

local inputTable = {}

function inputTable:new( objTable )
	local o = {}

	o.grp = display.newGroup( )

	local DXC = display.contentCenterX
	local startY = 200
	local stepY = 0

	local scrollView = widget.newScrollView(
    {
        x = display.contentCenterX,
        y = display.contentCenterY + 300,
        width = 1080,
        height = 700 + 600,
        horizontalScrollDisabled = true,
        listener = scrollListener,
        hideBackground = true
    })
 
	

	local items = {}

	for i,v in ipairs(objTable) do
		items[i] = inputCls:new(o.grp, DXC, startY + stepY, v)
		scrollView:insert( items[i].grp )

		stepY = stepY + items[i].stepY
	end



	setmetatable( o, self )
	self.__index = self
	return o
end

return inputTable