---
-- A simple addrebook module
-- This module manage an addressbook and can print it
-- This module provide also functions to add, remove and find entries in the addressbook.
-- @module addressbook
--

-- local table representing the module
local M = {}

-- local addressbook managed by this module
local addressbook = {}

--- 
-- @function [parent=#addressbook] add
-- @param lastname
-- @param firstname
-- @param company Can be nil
-- @param numbers
--
function M.add (lastname, firstname, company, numbers)
	local info = {}
	info.lastname = lastname
	info.firstname = firstname
	info.company = company

	addressbook[info] = numbers
end

--- 
-- @function [parent=#addressbook] remove
-- @param lastname
--
function M.remove (lastname)
	for info,numbers in pairs(addressbook) do
		if (info.lastname == lastname) then
			addressbook[info] = nil;
		end
	end
end

--- 
-- @function [parent=#addressbook] find
-- @param lastname
--
function M.find (lastname)
	for info,numbers in pairs(addressbook) do
		if (info.lastname == lastname) then
			return numbers[1]
		end
	end
	return nil, "Nobody found for the name:".. lastname
end

--- 
-- @function [parent=#addressbook] print
--
function M.print ()
	print ("addressbook:")
	for info,numbers in pairs(addressbook) do
		local linetoprint = info.lastname.." "..info["firstname"]

		linetoprint = linetoprint .. " (".. (info.company or "no company")..")"
		print (linetoprint)

		for i=1, #numbers do
			print ("    "..numbers[i])
		end
	end
end

return M
