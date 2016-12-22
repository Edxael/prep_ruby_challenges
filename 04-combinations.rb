# -----------------------------------------------------------------
# 4. Combinations
# Write a method combinations which takes two arrays of strings 
# and returns an array with all of the combinations of the items 
# in them, listing the first items first.
# -----------------------------------------------------------------


	# Method Combinations
def combinations

		# Creating arrays ans variables
	arr_1 = ["on", "in"]
	arr_2 = ["to", "rope"]
	arr_3 = []
	arr_4 = []
	count = 0

		# Printing arrays before combining
	puts "This program will create all combinations of the following arrays:"
	p arr_1
	p arr_2
	puts

	
		# Pupulating array with prefixes
	arr_1.length.times do |x|
		arr_2.length.times do |y|
			arr_3[count] = arr_1[x] 
			count += 1
		end
	end
	
		# Duplicating values of array 2
	arr_2 = arr_2 +	arr_2

	
		# Combining arrays
	arr_3.length.times do |x|
		arr_4[x] = arr_3[x] + arr_2[x]
	end
	puts "All the combinations are:"
	p arr_4

end

combinations()


# --------------------------------------
# 		Test of program run
#
# This program will create all combinations of the following arrays:
# ["on", "in"]
# ["to", "rope"]
#
# All the combinations are:
# ["onto", "onrope", "into", "inrope"]
# --------------------------------------