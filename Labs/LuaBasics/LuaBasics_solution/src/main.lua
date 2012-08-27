local sched = require 'sched'

local function main ()

	-- Step.1
	-- Create a while loop to iterate between 1 and 10
	local i=1
	while i<10 do
		print("i2: " .. i)
		i = i +1
	end

	-- Step.2
	-- Create a while loop to iterate between 1 and 10
	i=1
	repeat
		print("i3: " .. i)
		i = i +1
	until i<10

	-- Step.3
	-- Create a for loop to iterate between 1 and 10
	for i=1,10 do
		print("i1: "..i)
	end

	-- Step.4
	-- Test in the loop from 1 to 10 if the value is more than five
	-- of less to print "less than 5" and "more than 5"
	for i=1,10 do
		if i <5 then
			print("less than 5: " .. i)
		else
			print("more than 5: " .. i)
		end
	end
	
	-- end
	os.exit()
end

sched.run(main)
sched.loop()
