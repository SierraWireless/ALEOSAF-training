local sched = require 'sched'

-- Step.1
-- Require the module string of the execution environment and assign it to a local var
local string = require 'string'

local function main ()

	-- Step.2
	-- Use the string module to create a string using format
	-- After print it, set the string to upper case
	-- Press ctrl+space to have content assist


	-- Step.4
	-- Using the given funtions create an array with all addressbook related functions
	-- Then add/remove/find/print some entries to the address book using the function array
	local add = function (addressbook, lastname, firstname, company, numbers)
		local info = {}
		info.lastname = lastname
		info.firstname = firstname
		info.company = company

		addressbook[info] = numbers
	end

	-- Remove an entry to addressbook
	local remove = function (addressbook, lastname)
		for info,numbers in pairs(addressbook) do
			if (info.lastname == lastname) then
				addressbook[info] = nil;
			end
		end
	end

	-- Find the first number of the first person with a given last name
	local find = function (addressbook, lastname)
		for info,numbers in pairs(addressbook) do
			if (info.lastname == lastname) then
				return numbers[1]
			end
		end
		return nil, "Nobody found for the name:".. lastname
	end

	-- Print the addressbook
	local printaddressbook = function (addressbook)
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

	-- Create a table of function
	local addressbookfunctions
	
	-- Create a new addressbook
	local addressbook4 = {}

	-- Call functions from the table
	

	-- Step.5
	-- Create a new file called "addressbook.lua". Inside of it, create a new module using luadoc with all the addressbook relative functions.
	-- The addressbook table itself, that contains entries, can be included in the module or passed as parameter to module functions
	-- When the module is created, require it and call some function to add/remove/find and print some entries.
	
	-- Require our addressbook module
	local addressbook5 = require 'addressbook'

	-- Use the module
	

	os.exit()
end

sched.run(main)
sched.loop()
