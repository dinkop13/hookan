local win = require("WINcls")
local input = require("INPUTcls")
local item = require("ITEMcls")
local inputTable  = require("INPUTTABLEcls")
local mainWin = win:new()

local obj = {}

	obj[1] = item:new("Курительный табак №1")
	obj[2] = item:new("Курительный табак №2")
		obj[2].befor = 13

local tableI = inputTable:new(obj)