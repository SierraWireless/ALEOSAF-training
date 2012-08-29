local sched = require 'sched'

local function main ()

	-- Step.1
	-- Create an array with some random numbers
	-- Remove the second value of the array using table.remove() function
	-- Insert a value in the array using table.insert()
	local array1
	
	-- Step.2
	-- Complete the following function that print the content of an array given in parameter using a for loop
	-- Call the function to test your code
	local printtable2 = function (array)
		print ("table:")
	
	end
	-- display the table
	printtable2(array1)
	
	-- Step.3
	-- Create an address book, an address book is a table where the key is the name of the 
	-- person and the value a string representing the phone number.
	-- Put some entries in the addressbook
	-- Complete the following function to print the addressbook content
	local addressbook3 
	
	-- A function to print an table
	local printaddressbook3 = function (addressbook)
		print ("addressbook:")
		
	end
	-- display the table
	printaddressbook3(addressbook3)
	
	-- Step.4
	-- Improve the addressbook by allowing to set more than one phone number by person
	-- (The value of the table should be an array)
	-- Print the new table content to test your code
	local addressbook4 
	
	local printaddressbook4 = function (addressbook)
		print ("addressbook:")
		
	end
	-- display the table
	printaddressbook4(addressbook4)
	
	-- Step.5
	-- Improve the addressbook by allowing to set lastname, firstname and company name for a person.
	-- The company can be set or nil
	-- (Use a table as a key of the the addressbook table)
	-- Print the addressbook content to test your code
	local addressbook5 
	
	-- A function to print the address book
	local printaddressbook5 = function (addressbook)
		print ("addressbook:")
		
	end
	-- display the table
	printaddressbook5(addressbook5)
	
	-- Step.6 
	-- Complete the following function to add an entry at an existing addressbook
	-- Complete the following function to remove an entry at an existing addressbook from a given lastname
	-- Call the functions to add/remove entries and print the addressbook
	
	-- Add an entry
	local add = function (addressbook, lastname, firstname, company, numbers)
	
	end
	
	-- Remove an entry to addressbook
	local remove = function (addressbook, lastname)
		
	end
	
	
	-- Step.7
	-- Complete the following function to find the first phone number of a given lastname
	-- Call the function and be sure to handle the case where no phone number was found for the given lastname
	local find = function (addressbook, lastname)
	
	end
	
	os.exit()
end

sched.run(main)
sched.loop()
