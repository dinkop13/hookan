local win = require("WINcls")
local input = require("INPUTcls")

local mainWin = win:new()

local obj1 = {
	name = "Курительная смесь космос",
	befor = 0
}

local obj2 = {
	name = "Трубка для сосания члена",
	befor = 12
}

local mainInn1 = input:new(mainWin.grp, 540, 800, obj1)
local mainInn2 = input:new(mainWin.grp, 540, 1200, obj2)