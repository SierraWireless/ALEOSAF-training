local sched = require 'sched'

-- Step.1
-- Create a local function that just print "hello".
local function printhello ()
	print ('hello')
end

-- Step.3
-- Create a local function that takes two numbers arguments and 
-- print the result of the first arguement divided by the second one
local function divide3(arg1, arg2)
	print ("result:"..arg1/arg2)
end

-- Step.4
-- Same function that divide two numbers but just return the result instead of print it
-- Call the function and print the result in the main.
local function divide4(arg1, arg2)
	return arg1/arg2
end

-- Step.6
-- Create a function that perform an euclidian divide and return two params the result and the rest
-- Call this function in the main and print both returned values
local function divide6(arg1, arg2)
	local result = math.floor(arg1/arg2)
	local rest = arg1%arg2
	return result, rest
end

-- Step.7
-- Same function but handle the divide by zero error by returning a nil values followed by an error message
--- Call this function in the main and handle the error case result
local function divide7(arg1, arg2)
	if (arg2 == 0) then
		return nil, "Divide by zero is forbidden"
	end
	local result = math.floor(arg1/arg2)
	local rest = arg1%arg2
	return result, rest
end


local function main ()

	-- Step.1
	-- Call the print hello function
	printhello()
	
	-- Step.3
	-- Call the divide function
	divide3(11,2)
	
	-- Step.4
	-- Handle a function that return a value
	local result4 = divide4(11, 2)
	print ("result:"..result4)
	
	-- Step.6
	-- Handle multiple values on function return
	local result6, rest6 = divide6(11,2)
	print ("result:"..result6..",rest:"..rest6)
	
	-- Step.7
	-- Use assert to handle an error message
	-- A successful divide
	local result7, rest7 = assert(divide7(11,2))
	print ("result:"..result7..",rest:"..rest7)
	-- A failling divide
	result7, rest7 = assert(divide7(11,0))
	print ("result:"..result7..",rest:"..rest7)

	-- Step.9
	-- Put the divide function in a local variable
	local divide9 = function (arg1, arg2)
		if (arg2 == 0) then
			return nil, "Divide by zero is forbidden"
		end
		local result = math.floor(arg1/arg2)
		local rest = arg1%arg2
		return result, rest
	end
	-- Add call the function from the variable
	local result9, rest9 = assert(divide9(11,2))
	print ("result:"..result9..",rest:"..rest9)

	-- Step.10
	-- Create two functions: 
	-- The first one will take two numbers and one callback function as parameters 
	-- and will divide the numbers and call the callback function with the result and return nothing
	-- The second one will take a result as parameter and print it.
	-- Call the divide function with the callback function as parameter  
	
	-- Callback function
	local handleresultfn =  function (result, rest)
		print ("result:"..result..",rest:"..rest)
	end
	-- Divide function
	local divide2fn = function (arg1, arg2, handleresult)
		if (arg2 == 0) then
			print ("Divide by zero is forbidden")
		end
		local result = math.floor(arg1/arg2)
		local rest = arg1%arg2
		-- instead returning the result, call the callback
		handleresult(result, rest)
	end
	-- Call the divide function 
	divide2fn(11,2,handleresultfn)
	
	-- The end
	os.exit()
end

sched.run(main)
sched.loop()
