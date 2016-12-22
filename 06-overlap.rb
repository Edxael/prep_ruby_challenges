# -----------------------------------------------------------------------------------------------
#     Rectangle Overlap
#
# Write a method overlap which takes two rectangles defined by the coordinates of their corners, 
# e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether they overlap. You can assume all 
# coordinates are positive integers.
#
# It doesn’t count as overlapping if their edges touch but they do not otherwise overwrite 
# each other. As expressed by a sixth grade student:
#
# This program will catch and fix if values provided by user are wrong.
# Also works with negative values. 
# -----------------------------------------------------------------------------------------------



	# Method Overlap
def overlap()
		# Instructions for user. 
	puts
	puts "This software will determine if two rectangles overlap."
	puts "you will provide the cordenates of each rectangle one number at the time."
	puts


			# Requesting cordenates for First Rectangel
	puts "  -----  Cordenates of First Rectangle  --------"
	puts "please provide the 'X' cordenate for the bottom left corner"
	r1_a = gets.chomp.to_i
	puts
	puts "please provide the 'Y' cordenate for the bottom left corner"
	r1_b = gets.chomp.to_i
	puts
	puts "please provide the 'X' cordenate for the top right corner"
	r1_c = gets.chomp.to_i
	puts
	puts "please provide the 'Y' cordenate for the top right corner"
	r1_d = gets.chomp.to_i
	puts


	
		# Fail-Safe Testing for wrong inputs
	if (r1_a + r1_b) > (r1_c + r1_d) 
		puts "It seems that you Mix the cordenates"
		puts "you provide: [#{r1_a} , #{r1_b}],[#{r1_c} , #{r1_d}]"
		puts "do not worry we got you, now is fix"
		holder_1 = r1_a
		holder_2 = r1_b
	
		r1_a = r1_c
		r1_b = r1_d
	
		r1_c = holder_1
		r1_d = holder_2
	
		puts "Now the new cordenates are: [#{r1_a} , #{r1_b}],[#{r1_c} , #{r1_d}]"
			# this will allow the  user to restart the method
		puts "if you want to provide you numbers from the beggining please press: 'r' or press: 'c' to continue"
		again = gets.chomp.to_s.downcase 
		if again == "r"
			system("clear")
			overlap()
		end
	end


			# Request cordenates for second rectangle
	puts
	puts
	puts "  -----  Cordenates of Second Rectangle  --------"
	puts "please provide the 'X' cordenate for the bottom left corner"
	r2_a = gets.chomp.to_i
	puts
	
	puts "please provide the 'Y' cordenate for the bottom left corner"
	r2_b = gets.chomp.to_i
	puts
	
	puts "please provide the 'X' cordenate for the top right corner"
	r2_c = gets.chomp.to_i
	puts
	
	puts "please provide the 'Y' cordenate for the top right corner"
	r2_d = gets.chomp.to_i
	puts

	
		# Fail-Safe Testing for wrong input
	if (r2_a + r2_b) > (r2_c + r2_d) 
		puts "It seems that you Mix the cordenates"
		puts "you provide: [#{r2_a} , #{r2_b}],[#{r2_c} , #{r2_d}]"
		puts "do not worry we got you, now is fix"
		holder_1 = r2_a
		holder_2 = r2_b
	
		r2_a = r2_c
		r2_b = r2_d
	
		r2_c = holder_1
		r2_d = holder_2
	
		puts "Now the new cordenates are: [#{r2_a} , #{r2_b}],[#{r2_c} , #{r2_d}]"
			# this will allow the  user to restart the method
		puts "if you want to provide you numbers from the beggining please press: 'r' or press: 'c' to continue"
		again = gets.chomp.to_s.downcase 
		if again == "r"
			system("clear")
			overlap()
		end
	end
	puts


		# Forming arrays of the provided rectangles 
	rectangle_1 = [r1_a, r1_b, r1_c, r1_d]
	rectangle_2 = [r2_a, r2_b, r2_c, r2_d]
		

		# Show user the values provided and 
		# asking the user if he/she wants to start over
	puts "    You provide the following values:"
	puts "The rectangel 1 with cordenates: [#{rectangle_1[0]} , #{rectangle_1[1]}],[#{rectangle_1[2]} , #{rectangle_1[3]}]"
	puts "The rectangel 2 with cordenates: [#{rectangle_2[0]} , #{rectangle_2[1]}],[#{rectangle_2[2]} , #{rectangle_2[3]}]"
	puts


		# This will allow the user to star over if he/she wants.
	puts "if you want to provide the cordenates again please press: 'r' or press: 'c' to continue"
		again = gets.chomp.to_s.downcase
		if again == "r"
			system("clear")
			overlap()
		end
	puts
	


			# --------- Here is where the Logic will be executed -----------
	
		# Arrays to save the individual squares of each provided rectangle
	squares_in_rectangle_1 = []
	squares_in_rectangle_2 = []
	
	
		# Variables for calculations of rectangle 1
	a = rectangle_1[0]
	b = rectangle_1[1] 
	c = a + 1	
	d = b + 1
	 
		# calculating all the individual squares on rectangle 1
	(rectangle_1[3] - rectangle_1[1]).times do 
	
		(rectangle_1[2] - rectangle_1[0]).times do 
			squares_in_rectangle_1.push([a, b, c, d])
			a += 1
			c += 1
		end
	
		a = rectangle_1[0]
		c = a + 1
		b += 1
		d += 1
	end
	
	
		# Variables for calculations of rectangle 2
	w = rectangle_2[0]
	x = rectangle_2[1] 
	y = w + 1	
	z = x + 1
	
		# calculating all the individual squares on rectangle 2
	(rectangle_2[3] - rectangle_2[1]).times do 
	
		(rectangle_2[2] - rectangle_2[0]).times do 
			squares_in_rectangle_2.push([w, x, y, z])
			w += 1
			y += 1
		end
	
		w = rectangle_2[0]
		y = w + 1
		x += 1
		z += 1
	end
	
		# Pasing the overlaped squares to the array Overlaped_squares
	overlaped_squares = squares_in_rectangle_1 & squares_in_rectangle_2
	
			# --------- End of logic -----------

	
		# selecting output using results 
	if overlaped_squares.empty? == true
		puts " NO"
		puts "The Rectanges do not overlap"
	else
		puts " YES"
		puts "The Rectanges overlap on the squares with cordenates:"
		p overlaped_squares
	end
	
	
end

	# Calling the method
overlap()



# ---------------------------------------------------------------------------------------------------
	# Test of program run

# This software will determine if two rectangles overlap.
# you will provide the cordenates of each rectangle one number at the time.

#   -----  Cordenates of First Rectangle  --------
# please provide the 'X' cordenate for the bottom left corner
# 3

# please provide the 'Y' cordenate for the bottom left corner
# 3

# please provide the 'X' cordenate for the top right corner
# 0

# please provide the 'Y' cordenate for the top right corner
# 0

# It seems that you Mix the cordenates
# you provide: [3 , 3],[0 , 0]
# do not worry we got you, now is fix
# Now the new cordenates are: [0 , 0],[3 , 3]
# if you want to provide you numbers from the beggining please press: 'r' or press: 'c' to continue



#   -----  Cordenates of Second Rectangle  --------
# please provide the 'X' cordenate for the bottom left corner
# 1

# please provide the 'Y' cordenate for the bottom left corner
# 1

# please provide the 'X' cordenate for the top right corner
# 4

# please provide the 'Y' cordenate for the top right corner
# 5


#     You provide the following values:
# The rectangel 1 with cordenates: [0 , 0],[3 , 3]
# The rectangel 2 with cordenates: [1 , 1],[4 , 5]

# if you want to provide the cordenates again please press: 'r' or press: 'c' to continue


#  YES
# The Rectanges overlap on the squares with cordenates:
# [[1, 1, 2, 2], [2, 1, 3, 2], [1, 2, 2, 3], [2, 2, 3, 3]]
# ---------------------------------------------------------------------------------------------------
