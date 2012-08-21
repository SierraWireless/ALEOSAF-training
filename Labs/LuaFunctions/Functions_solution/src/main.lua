local sched = require 'sched'

-- Step.1
-- Just print "hello"
local function printhello ()
	print ('hello')
end

-- Step.3
-- Divide two numbers
local function divide3(arg1, arg2)
	print ("result:"..arg1/arg2)
end

-- Step.4
-- Return the result
local function divide4(arg1, arg2)
	return arg1/arg2
end

-- Step.6
-- Perform euclidian divide and return two params
local function divide6(arg1, arg2)
	local result = math.floor(arg1/arg2)
	local rest = arg1%arg2
	return result, rest
end

-- Step.7
-- Handle the divide by zero error
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
	-- call print hello
	printhello()
	
	-- Step.3
	-- call the divide function
	divide3(11,2)
	
	-- Step.4
	-- handle a return value
	local result4 = divide4(11, 2)
	print ("result:"..result4)
	
	-- Step.6
	-- handle multiple values on return
	local result6, rest6 = divide6(11,2)
	print ("result:"..result6..",rest:"..rest6)
	
	-- Step.7
	-- A successful divide
	local result7, rest7 = assert(divide7(11,2))
	print ("result:"..result7..",rest:"..rest7)
	-- A failling divide
	result7, rest7 = assert(divide7(11,0))
	print ("result:"..result7..",rest:"..rest7)

	-- Step.9
	-- create a function in a var
	local divide9 = function (arg1, arg2)
		if (arg2 == 0) then
			return nil, "Divide by zero is forbidden"
		end
		local result = math.floor(arg1/arg2)
		local rest = arg1%arg2
		return result, rest
	end
	-- call it
	local result9, rest9 = assert(divide9(11,2))
	print ("result:"..result9..",rest:"..rest9)

	-- Step.10
	-- create a callback function
	local handleresultfn =  function (result, rest)
		print ("result:"..result..",rest:"..rest)
	end
	-- handle the result in a callback
	local divide2fn = function (arg1, arg2, handleresult)
		if (arg2 == 0) then
			print ("Divide by zero is forbidden")
		end
		local result = math.floor(arg1/arg2)
		local rest = arg1%arg2
		-- instead returning the result, call the callback
		handleresult(result, rest)
	end
	-- call it
	divide2fn(11,2,handleresultfn)
	
	-- the end
	os.exit()
end

sched.run(main)
sched.loop()
