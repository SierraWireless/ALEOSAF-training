local sched = require 'sched'

-- Step.1
-- Create a local function that just print "hello".


-- Step.3
-- Create a local function that takes two numbers arguments and 
-- print the result of the first arguement divided by the second one


-- Step.4
-- Same function that divide two numbers but just return the result instead of print it
-- Call the function and print the result in the main.


-- Step.6
-- Create a function that perform an euclidian divide and return two params the result and the rest
-- Call this function in the main and print both returned values


-- Step.7
-- Same function but handle the divide by zero error by returning a nil values followed by an error message
--- Call this function in the main and handle the error case result


local function main ()

	-- Put call to local function define above here


	-- Step.9
	-- Put the divide function in a local variable
	-- Add call the function from the variable


	-- Step.10
	-- Create two functions: 
	-- The first one will take two numbers and one callback function as parameters 
	-- and will divide the numbers and call the callback function with the result and return nothing
	-- The second one will take a result as parameter and print it.
	-- Call the divide function with the callback function as parameter  
	
	
	-- The end
	os.exit()
end

sched.run(main)
sched.loop()
