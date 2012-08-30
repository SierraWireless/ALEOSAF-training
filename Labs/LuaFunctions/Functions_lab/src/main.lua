-- ============================================================================
-- Labs Lua Function.
-- ============================================================================

-- ----------------------------------------------------------------------------
-- Includes section
-- ----------------------------------------------------------------------------

local sched = require 'sched'

-- ----------------------------------------------------------------------------
-- TODO Step.1: Print a string.
-- ----------------------------------------------------------------------------
-- 1. Create a function that prints "hello".
-- 2. Call the function from the main function. 
-- 3. Run the project.
-- ----------------------------------------------------------------------------

--- @function [parent=#global] S1_print_hello

-- TODO Step.1.1: create function S1_print_hello

-- ----------------------------------------------------------------------------
-- TODO Step.2: Print some maths.
-- ----------------------------------------------------------------------------
-- 1. Create a local function that takes two arguments and prints the result
--    the division of the first ons by the second one.
-- 2. Call the function from the main function. 
-- 3. Run the project.
-- ----------------------------------------------------------------------------

--- @function [parent=#global] S2_print_divide
-- @param #number dividend
-- @param #number divisor 

-- TODO Step.2.1: create function S2_print_divide

-- ----------------------------------------------------------------------------
-- TODO Step.3: Return a value.
-- ----------------------------------------------------------------------------
-- 1. Create a local function that also divides its two arguments 
--    but returns the relust instead of printing it.
-- 2. Call the function and print the result in the main function.
-- 3. Run the project.
-- ----------------------------------------------------------------------------

--- @function [parent=#global] S3_divide
-- @param #number dividend
-- @param #number divisor 
-- @return #number quotient

-- TODO Step.3.1: create function S3_divide

-- ----------------------------------------------------------------------------
-- TODO Step.4: Return multiple values.
-- ----------------------------------------------------------------------------
-- 1. Create a local function that performs an euclidean division of its two
--    arguments and returns both the quotient and the remainder:
--     * To compute the qotient, use math.floor(number) 
--       that returns the interger of a number.
--     * To compute the remainder, use the % operator to perform modulo.
-- 2. Call this function and print both returned values in the main function.
-- 3. Run the project.
-- ----------------------------------------------------------------------------

--- @function [parent=#global] S4_euclidean_divide
-- @param #number dividend
-- @param #number divisor 
-- @return #number, #number quotient and remainder

-- TODO Step.4.1: create function S4_euclidean_divide


-- ----------------------------------------------------------------------------
-- TODO Step.5: Handle errors.
-- ----------------------------------------------------------------------------
-- 1. Create a local function that also divides its two arguments and handles
--    the divide by zero error:
--    * If the divisor is return two values: nil and an error message
--    * Otherwise return the result of the division.
-- 2. Call this function and handle the error case result 
--    by using "assert" function in the main function.
-- 3. Run the project.
-- ----------------------------------------------------------------------------

--- @function [parent=#global] S5_error_divide
-- @param #number dividend
-- @param #number divisor
-- @return #number quotient
-- @return #nil, #string error message

-- TODO Step.5.1: create function S4_euclidean_divide

-- ----------------------------------------------------------------------------
-- main function
-- ----------------------------------------------------------------------------

local function main ()

	-- Write here the calls to the local functions defined in previous steps.
	-- TODO Step.1.2: call function S1_print_hello
	-- TODO Step.2.2: call function S2_print_divide
	-- TODO Step.3.2: call function S3_divide
	-- TODO Step.4.2: call function S4_euclidean_divide
	-- TODO Step.5.2: call function S5_error_divide with assert
	
	print("end")
	os.exit()
end

-- ----------------------------------------------------------------------------
-- bootstrap code
-- ----------------------------------------------------------------------------

sched.run(main)
sched.loop()
