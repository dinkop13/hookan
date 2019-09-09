local INPUT = {}

function INPUT:new( insertGrp, thisX, thisY, showText, inputText)
	local o = {}

		o.grp = display.newGroup()

		o.backTitle = display.newRoundedRect( o.grp , thisX, thisY, display.contentWidth - 100, 130, 30 )
			o.backTitle:setFillColor(0,0,0,0.6)

		o.name = display.newText( o.grp, showText, thisX -(display.contentWidth/6), thisY, ((display.contentWidth - 100)/2), 100 )
			o.name.size = 40

		o.inputField = native.newTextField(thisX + 250, thisY, 300, 100 )
			o.inputField.hasBackground = false
			o.inputField.size = 40
			--o.inputField:setTextColor( 1 )


	insertGrp:insert(o.grp)
	setmetatable( o, self )
	self.__index = self
	return o
end

return INPUT