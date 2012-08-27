local sched = require 'sched'

-- Step.1
-- Create a local function that just print "hello".
-- Call the created function from the main and run it to test


-- Step.3
-- Create a local function that takes two numbers arguments and 
-- print the result of the first arguement divided by the second one


-- Step.4
-- Same function that divide two numbers but just return the result instead of print it
-- Call the function and print the result in the main.


-- Step.6
-- Create a function that perform an euclidian divide and return two params the result and the rest
-- To compute the result, use math.floor(number) that return the interger of a number
-- To compute the rest, use the % operator to perform modulo
-- Call this function in the main and print both returned values


-- Step.7
-- Same function but handle the divide by zero error by returning a nil values followed by an error message
-- If there are no error, just return the result as usual
-- Call this function in the main and handle the error case result by using "assert" function


local function main ()

	-- Put call to local function define above here


	-- Step.9
	-- Affect a divide function in a local variable


	-- Step.10
	-- Create two functions: 
	-- The first one will take a parameter as parameter and print it.
	-- The second one will take two numbers and the first callback function as parameters 
	-- and will divide the numbers and call the callback function with the result
	-- And the end, call the divide function with the callback function as parameter
	
	
	-- The end
	print("end")
	os.exit()
end

sched.run(main)
sched.loop()
