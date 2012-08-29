local sched = require 'sched'
local addressbook = require 'addressbook'
local string = require "string"

local function main ()
	-- For the first and second step, see addressbook.lua file

	-- Step.3
	-- Use the contructor to create a new instance of addressbook from addressbook module
	-- Call some function to add/remove/find/print entries in the new instance of addressbook
	-- Call the add function to add a number under "Smith" lastname

	
	-- Step.4
	-- Create another instance of addressbook
	-- Add a entry to this new instance under "Smith" lastname but with different number

	
	-- Step.5
	-- Search for "Smith" in the first instance and print the number
	-- Search for "Smith" in the second instance and print the number
	-- Check that the two Smith's numbers are differents

	
	os.exit()
end

sched.run(main)
sched.loop()
