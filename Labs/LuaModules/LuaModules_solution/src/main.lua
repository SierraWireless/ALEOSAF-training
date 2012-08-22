local sched = require 'sched'

-- Step.2
-- require string module from execution environement
local string = require 'string'

-- Step.5
-- require our addressbook module 
local addressbook5 = require 'addressbook'

local function main ()

	-- Step.3
	-- Some use of the string module, press ctrl+space to have content assist
	local example = string.format("arg1:%s, numberarg:%d", "ARG1", 1234)
	print(example)
	print(string.upper(example))

	-- Step.4
	-- Add entry to the adress book
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
	local addressbookfunctions = {find=find, add=add, remove=remove, print=printaddressbook}
	
	-- Create a new addressbook
	local addressbook4 = {}

	-- call functions from the table
	addressbookfunctions.add(addressbook4, "John", "Smith", "NoWhere Inc", {"095487315"})
	addressbookfunctions.add(addressbook4, "Jack", "Captain", nil, {"0447981657"})
	addressbookfunctions.print(addressbook4)

	-- Step.7
	-- Use the module
	addressbook5.add("John", "Smith", "NoWhere Inc", {"095487315"})
	addressbook5.add("Jack", "Captain", nil, {"0447981657"})
	addressbook5.print()

	os.exit()
end

sched.run(main)
sched.loop()
