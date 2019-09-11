local win = require("WINcls")
local input = require("INPUTcls")

local mainWin = win:new()

local obj = {
	name = "Курительная смесь космос",
	befor = "300"
}

local mainInn = input:new(mainWin.grp, 540, 800, obj)