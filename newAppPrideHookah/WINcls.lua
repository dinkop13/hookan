local WIN = {}

function WIN:new()
	local o = {}

	o.grp = display.newGroup( )
	o.back = display.newImage( o.grp, "img/back.jpg", display.contentCenterX, display.contentCenterY )
	o.logo = display.newImage(o.grp, "img/logo.png", display.contentCenterX - (display.contentCenterX/3), display.contentCenterY - (display.contentCenterY - (display.contentCenterY/3)))

	function o:show()
		o.grp:alpha(1)
	end

	function o:hide()
		o.grp:alpha(0)
	end

	setmetatable( o, self )
	self.__index = self
	return o
end

return WIN