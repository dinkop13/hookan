local item = {}

function item:new( thisName )
	local o = {}

	o.name = thisName
	o.befor = 0
	o.now = 0

	setmetatable( o, self )
	self.__index = self
	return o
end

return item