---
-- A simple addressbook module
-- This module manage an addressbook and can print it
-- This module provide also functions to add, remove and find entries in the addressbook.
-- @module addressbook
--

-- local table representing the module
local M = {}

-- Step.1
-- Use Luadoc to declare a new type "instance"

-- Step.2
-- Create a constructor of addressbook.
-- Comment the new function using luadoc, the constructor will return a table of type "instance"
-- This constructor have to add a field initialized by an empty table to created 
-- instance which will contain addressbook entries
function M.new(self)

end

-- Step.3
-- Modify address book functions
-- Each function have to start by a parameter called "self"
-- The table of data is now located in the self variable (see constructor)
-- Comment each functions using luadoc, the parent type of function have to be "instance" 

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
