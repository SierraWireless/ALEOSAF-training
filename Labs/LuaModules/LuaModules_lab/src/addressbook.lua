-- ============================================================================
-- Addressbook module
-- ============================================================================

-- ----------------------------------------------------------------------------
-- TODO Step.1: Create addressbook module
-- ----------------------------------------------------------------------------
-- 1. Create a luadoc bloc to declare a module called "addressbook"
-- 2. Create an empty array called "M" to put module function in it
-- 3. Create an empty array called "addressbook" witch will contain addressbook data
-- ----------------------------------------------------------------------------


-- ----------------------------------------------------------------------------
-- TODO Step.2: Add functions
-- ----------------------------------------------------------------------------
-- 1. Create Luadoc comments for each function bellow
-- Note that all the functions will work with the module based addressbook table
-- ----------------------------------------------------------------------------

function M.add (lastname, firstname, company, numbers)
	local info = {}
	info.lastname = lastname
	info.firstname = firstname
	info.company = company

	addressbook[info] = numbers
end

function M.remove (lastname)
	for info,numbers in pairs(addressbook) do
		if (info.lastname == lastname) then
			addressbook[info] = nil;
		end
	end
end

function M.find (lastname)
	for info,numbers in pairs(addressbook) do
		if (info.lastname == lastname) then
			return numbers[1]
		end
	end
	return nil, "Nobody found for the name:".. lastname
end

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

-- ----------------------------------------------------------------------------
-- returning the array of functions representing the module
-- ----------------------------------------------------------------------------
return M
