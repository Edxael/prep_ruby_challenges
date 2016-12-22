# -------------------------------------------------------------------------------------------------
# 5. Primes
# Write a method is_prime? which takes in a number and returns true if it is a prime number.
#
# In this case, “Huston we got a problem”  basically there is NOT a test or formula that would find 
# Prime Numbers with a 100% exactitude, no matter how fancy the formula you choose. for this 
# reason I create a very basic way to find out if a number is prime, using a library call prime. 
# -------------------------------------------------------------------------------------------------


	# Method Prime?
def prime()

		# calling an external library
	require 'prime'

		# Requesting user for input
	puts "Please provide a number to see if is PRIME:"
	number = gets.chomp.to_i
	puts
		
		# Logical test to find out if is prime.
	if Prime.prime?(number) == true
		puts "'YES' the number #{number} is PRIME"
	else 
		puts "'NO' the number #{number} is NOT PRIME"
	end
end


   # Calling the method "prime()" 
prime()


# -------------------------------------------------
# 	Program test run
#
# Please provide a number to see if is PRIME:
# 1997
#
# 'YES' the number 1997 is PRIME
# -------------------------------------------------