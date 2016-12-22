# --------------------------------------------------------------------------------
# 2.Factorial
# Write a method factorial which takes a number and returns the product of every 
# number up to the current number multiplied together.
# --------------------------------------------------------------------------------


	# Factorial

def factorial

		# Provide information to user about what this sofware does. 
	puts "This software calculates the factorial of any integer."
	puts "Note: if you enter a negative value it will convert it to positive."
	puts

		# Requesting input from user
	puts "Please provide number to factor:"
	number = gets.chomp.to_i.abs 
	puts
	
		# Calculates the factoria of given input
	total = 1
	for x in 1..number
		total *= x
	end
		
		# Prints results of factorial to user. 
	puts "The Factorial value of #{number} is: #{total}"
	
end

factorial()


# ---------------------------------------------------------------------------
# 	     Test of Program run

# This software calculates the factorial of any integer
# Note: if you enter a negative value it will work with the absolute value

# Please provide number to factor:
# 7

# The Factorial value of 7 is: 5040
# ---------------------------------------------------------------------------