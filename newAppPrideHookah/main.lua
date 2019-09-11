local win = require("WINcls")
local input = require("INPUTcls")
local item = require("ITEMcls")
local inputTable  = require("INPUTTABLEcls")
local mainWin = win:new()

local obj = {}

	obj[1] = item:new("Курительный табак №1")
	obj[2] = item:new("Курительный табак №2")
		obj[2].befor = 13
	obj[3] = item:new("Курительный табак №2")
	obj[4] = item:new("Курительный табак №2")
		obj[4].befor = 17
	obj[5] = item:new("Курительный табак №2")
	obj[6] = item:new("Курительный табак №2")


local tableI = inputTable:new(obj)