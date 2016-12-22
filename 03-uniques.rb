# ------------------------------------------------------------------------------------
# 3. Uniques
# Write a method uniques which takes an array of items and returns the array without 
# any duplicates. Don’t use Ruby’s uniq method!
#
# The following solution is Dynamic and Interactive, you will be prompted to provide: 
# size of the array, maximum value, and minimum value, whit this information the 
# software will create and populate an array with the provided specifications, then 
# it will print it so you can see it. after that it will delete all duplicates and 
# presented only the UNIQUE values in an organize order.
#
# Because things happen, in case that you mix the Maximun and Minimum values it will 
# catch it and fix it.
# ------------------------------------------------------------------------------------

	# Method Uniques

def uniques ()

		# Inform user on what this program do.
    puts "This program will create a list of random numbers"
    puts "using information provided by you."
    puts 

    	# Requesting user for input and save it on variables
	puts "Please provide how many elements on the list:"
	places = gets.chomp.to_i
	puts
	puts "Please provide Minimu value:"
	min = gets.chomp.to_i
	puts
	puts "Please provide Maximum value:"
	max = gets.chomp.to_i
	puts
	
		# Fail-Safe: check user input for mistakes and fix them.
		# also inform user about the error and the changes made.
	if min > max 
		puts "It seems that you mix the Maximum and Minimu values"
		puts "don't worry we got you cover, we just swtich them"
		holder = max 
		max = min 
		min = holder 
		puts "now the values are Maximum: #{max}, Minimu: #{min}"
		puts
	end
	

		# -------- Ligic sequenses -------------

		# Create and pupulate a random array with user inputs.
		# Also shows the new created array to user
	numbers = Array.new(places) { rand(min..max) }
	puts "The random Array generated:"
	p numbers
	puts
	
		# Rearrange the array in numerical sequence
	numbers.sort!

		# Creates a new array to storage non duplicate values
	singles = []
	
		# This loop will push non duplicated values to the new array.
	places.times do |x|
		next if numbers[x] == singles.last
		singles.push(numbers[x])
	end
	
		# Inform and show user unique and organized values
	puts "Unique and Organize values:"
	p singles

end


	# calling the method
uniques()


# ----------------------------------------------------------------------------------------
# 	Example of software run
#
# Please provide how many elements on the array:
# 25
#
# Please provide Minimu value:
# 12
#
# Please provide Maximum value:
# 4
#
# It seems that you mix the Maximum and Minimu values
# don't worry we got you cover, we just swtich them
# now the values are Maximum: 12, Minimu: 4
#
# The random Array generated:
# [6, 4, 11, 12, 4, 5, 10, 10, 10, 9, 7, 8, 12, 12, 5, 9, 11, 11, 5, 8, 5, 6, 10, 9, 12]
#
# Unique and Organize values:
# [4, 5, 6, 7, 8, 9, 10, 11, 12]
# ----------------------------------------------------------------------------------------