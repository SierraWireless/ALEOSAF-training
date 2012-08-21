local sched = require 'sched'
local addressbook = require 'addressbook'
local string = require "string"

local function main ()
	-- Step.3
	local mybook = addressbook:new()

	-- Create a instance of addressbook 
	mybook.add(mybook, "John", "Smith", "NoWhere Inc", {"095487315"})
	mybook:add( "Jack", "Captain", nil, {"0447981657"})
	mybook:print()
	
	-- Create another instance
	local myotherbook = addressbook:new()
	myotherbook:add("White","Dupond",nil,{"0587924842"})
	
	-- Search for John in the first instance
	local whitenumber = assert(mybook:find("John"))
	print (string.format("John number in mybook instance : %s", whitenumber))
	
	-- Search for John in the second instance
	whitenumber = assert(myotherbook:find("John"))
	print (string.format("John number is myotherbook instance : %s", whitenumber))
	
	os.exit()
end

sched.run(main)
sched.loop()
