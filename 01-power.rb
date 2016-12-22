# -----------------------------------------------------------------------------------
# 1.Power
# Write a method power which takes two integers (base and exponent) and returns the 
# base raised to the power of exponent. Do not use Ruby’s **operator for this!
#
# This code works with Integers and Negative values. unfortunately I need more time 
# to make it to work with decimals, but coming soon.
# -----------------------------------------------------------------------------------

   # Method Power

def power()

		# Tells user what this program does. 
	puts "This program calculate the exponents"
	puts "You can use Positive & Negative numbers"
	puts

		# Request input from user and save it on variables.
	puts "Please provide Base number"
	base_num = gets.chomp.to_i
	puts 
	puts "Please provide the Exponent number"
	expo_num = gets.chomp.to_i
	puts

		# Nested method with the calculations
	def power(bn, en)

			# Calculations with Negative values
		if en < 0
			holder = 1
			en.abs.times do
				holder *= bn 
			end
			holder = 1.0 / holder 

			# Calculations with positive numbers
		else
			holder = 1
			en.times do
				holder *= bn 
			end
		end

			# return value to main method
		return holder
	end
	
		# Prints results of calculations. 
	puts "#{base_num} to the #{expo_num} power is: #{power(base_num, expo_num)}"

end

	# Calling the method.
power()

# ---------------------------------------------
#    Test of program run
#
# This program calculate the exponents
# You can use Positive & Negative numbers
#
# Please provide Base number
# 5
#
# Please provide the Exponent number
# 5
#
# 5 to the 5 power is: 3125
# --------------------------------------------