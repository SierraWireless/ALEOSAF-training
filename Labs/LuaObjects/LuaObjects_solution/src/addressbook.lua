---
-- A simple addressbook module
-- This module manage an addressbook and can print it
-- This module provide also functions to add, remove and find entries in the addressbook.
-- @module addressbook
--
-- @type [parent=#addressbook] addres

-- local table representing the module
local M = {}

-- Step.2
-- Modify address book functions :
-- Each function have to start by the self parameter
-- The table of data should be located in self.table

---
-- @function [parent=#instance] add
-- @param self
-- @param lastname
-- @param firstname
-- @param company Can be nil
-- @param numbers
--
function M.add (self, lastname, firstname, company, numbers)
	local info = {}
	info.lastname = lastname
	info.firstname = firstname
	info.company = company

	self.table[info] = numbers
end

---
-- @function [parent=#instance] remove
-- @param self
-- @param lastname
--
function M.remove (self, lastname)
	for info,numbers in pairs(self.table) do
		if (info.lastname == lastname) then
			self.table[info] = nil;
		end
	end
end

---
-- @function [parent=#instance] find
-- @param self
-- @param lastname
--
function M.find (self, lastname)
	for info,numbers in pairs(self.table) do
		if (info.lastname == lastname) then
			return numbers[1]
		end
	end
	return nil, "Nobody found for the name:".. lastname
end

---
-- @function [parent=#instance] print
-- @param self
--
function M.print(self)
	print ("addressbook:")
	for info,numbers in pairs(self.table) do
		local linetoprint = info.lastname.." "..info["firstname"]

		linetoprint = linetoprint .. " (".. (info.company or "no company")..")"
		print (linetoprint)

		for i=1, #numbers do
			print ("    "..numbers[i])
		end
	end
end

-- Step.1 

---
-- @function [parent=#addressbook] new
-- @param self
-- @return #instance
--
function M.new(self)

	-- Create a table representing the new addrebook instance
	local newaddressbook = {}
	
	-- Create a new empty table to store instance datas
	newaddressbook.table = {}
	
	-- Set addressbook functions accesible form the the instance
	setmetatable(newaddressbook, self)
	self.__index = self
	
	-- return the new table
	return newaddressbook
end

return M
