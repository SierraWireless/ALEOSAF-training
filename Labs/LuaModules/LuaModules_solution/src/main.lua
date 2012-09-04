-- ============================================================================
-- Labs Lua Module.
-- ============================================================================

-- ----------------------------------------------------------------------------
-- Includes section
-- ----------------------------------------------------------------------------
local sched = require 'sched'

-- ----------------------------------------------------------------------------
-- TODO Step.1: Require string module.
-- ----------------------------------------------------------------------------
-- 1. Require the module "string" using the keyword "require"
-- 2. Assign the require statement to a local variable 
-- ----------------------------------------------------------------------------
local string = require 'string'

local function main ()

	-- ----------------------------------------------------------------------------
	-- TODO Step.2: Use string module
	-- ----------------------------------------------------------------------------
	-- 1. Use auto-completion to see functions of the string module (key shortcut: ctrl+space)
	-- 2. Create a string using the string.format function
	-- 3. Print the created string
	-- 4. Swith the string to upper case, and print it again
	-- ----------------------------------------------------------------------------
	local example = string.format("arg1:%s, numberarg:%d", "ARG1", 1234)
	print(example)
	example = string.upper(example)
	print(example)

	-- ----------------------------------------------------------------------------
	-- TODO Step.4: Create an array of functions
	-- ----------------------------------------------------------------------------
	-- 1. Using the given funtions create an array with all addressbook related functions
	-- 2. Then add/remove/find/print some entries to the address book using the function array
	-- ----------------------------------------------------------------------------
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

	-- Call functions from the table
	addressbookfunctions.add(addressbook4, "John", "Smith", "NoWhere Inc", {"095487315"})
	addressbookfunctions.add(addressbook4, "Jack", "Captain", nil, {"0447981657"})
	addressbookfunctions.print(addressbook4)

	-- ----------------------------------------------------------------------------
	-- TODO Step.5: Create a module
	-- ----------------------------------------------------------------------------
	-- 1. See addressbook.lua file to create a module.
	-- 2. When the module is created, require it
	-- 3. Call some function to add/remove/find and print some entries
	-- ----------------------------------------------------------------------------
	
	-- Require our addressbook module
	local addressbook5 = require 'addressbook'

	-- Use the module
	addressbook5.add("John", "Smith", "NoWhere Inc", {"095487315"})
	addressbook5.add("Jack", "Captain", nil, {"0447981657"})
	addressbook5.print()

	os.exit()
end

-- ----------------------------------------------------------------------------
-- bootstrap code
-- ----------------------------------------------------------------------------

sched.run(main)
sched.loop()
