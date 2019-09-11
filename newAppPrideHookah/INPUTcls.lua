local INPUT = {}

function INPUT:new( insertGrp, thisX, thisY, thisObj)
	local o = {}

		local H = display.contentHeight
		local W = display.contentWidth

		local WinH = 330
		local winW = W - (W/10)
		local blockW = winW / 12

		o.data = thisObj

		o.grp = display.newGroup()

		o.backTitle = display.newRoundedRect( 
				o.grp,
				thisX,
				thisY,
				winW,
				WinH,
				30
			)
			o.backTitle:setFillColor(0,0,0,0.6)

		o.name = display.newText( 
				o.grp, 
				o.data.name, 
				thisX - blockW*3, 
				thisY, 
				blockW*5, 
				WinH - 20
			)
			o.name.size = 40

		o.titleBefor = display.newText( 
				o.grp, 
				"с прошлой смены: ", 
				thisX + blockW*3, 
				thisY - (WinH/4), 
				blockW*5,
				(WinH/2) - 30
			)
			o.titleBefor.size = 40

		o.titleNow = display.newText( 
				o.grp, 
				"с начале смены: ", 
				thisX + blockW*3, 
				thisY + (WinH/9), 
				blockW*5,
				(WinH/2) - 30
			)
			o.titleNow.size = 40

		o.befor = display.newText( 
				o.grp, 
				o.data.befor, 
				thisX + blockW*3, 
				thisY - (WinH/8), 
				blockW*4.3,
				(WinH/2) - 30
			)
			o.befor.size = 70

		o.backTitle = display.newRoundedRect( 
				o.grp,
				thisX + blockW*3, 
				thisY + (WinH/4), 
				blockW*5,
				(WinH/2) - 40,
				30
			)
			o.backTitle:setFillColor(1,1,1,0.6)

		o.inputField = native.newTextField(
				thisX + blockW*3, 
				thisY + (WinH/4), 
				blockW*4.7,
				(WinH/2) - 60
			)
			o.inputField.hasBackground = false
			--o.inputField.size = 40
			o.inputField.inputType = "number"
			--o.inputField:setTextColor( 1 )


	insertGrp:insert(o.grp)
	setmetatable( o, self )
	self.__index = self
	return o
end

return INPUT