# ---------------------------------------------------------------------------------------------
# The Counting Game
#
# 10 friends are sitting in a circle around a table and decide to play a new game. In it, 
# they count up through the numbers from 1 to 100. The first person says "1", the second 
# says "2" and so on... but with a few catches:
#
# Whenever the number is divisible by 7, they switch directions. So person 6 will say "6", 
# person 7 will say "7", then person 6 again will say "8".
#
# Whenever the number is divisible by 11, they skip the next person for the following number. 
# For instance, if person 3 says "33", person 5 will say "34" instead (person 4 gets skipped).
#
# ---------------------------------------------------------------------------------------------


	# this method is used when players sequence is forward. 
def forw(members, up_to, counter, player)

			# Skips player
		# if number(Counter) is divisible by 11 will add 1 to player to skip player.
	if counter % 11 == 0 && counter != 0
		player += 1

			# Fail-Safe  to prevent players go above real number of players
		if player == (members + 1)
			player = 1
		end

			# Not nesesary: will inform what player gets skiped
		puts "                                 Player #{player} skipt"
	end 


		# adding 1 to the variables received
	player += 1	
	counter += 1


		# fail-safe to reset player number if it goes above number provided
	if player == (members + 1)
		player = 1
	end
		

		# Not nesesary but provides better format on the output
		# it adds a extra space when player # is less than 10
	if player < 10
		space = " "
	else
		space = ""
	end


		# 	this if is not needed, it just provide a fancy output to the las player
	if counter == up_to
		puts "   ---------------------------------"
		puts 
		puts "    Player '#{player}' with the Number: #{counter} "
		

		# 	Output for each player this provide the folowing information:
		# 	01 - What method was executed
		# 	02 - What player turn is
		# 	03 - What number such player said
	else
		puts "Forw - Player: #{space}#{player} - Number: #{counter}"
	end


		# will exit this method and call the "back()"" method to make players sequence go backwas
		# will pass current value of parameters. 
	if counter % 7 == 0
			# the next line is Not nesesary: will inform the change of direction.
		puts "                                 Change direction"
		back(members, up_to, counter, player)
	end	


		# will exit this method and call the "done()" method to end the game
	if counter == (up_to)
		done()
	end


	# will start this method again, pasing current value of parameters
		forw(members, up_to, counter, player)
end



			# ------------------------ Another Method --------------------------

	# this method is used when players sequence is forward.
def back(members, up_to, counter, player)


	# Skips player
		# if number(Counter) is divisible by 11 will substract 1 to player to skip player.
	if counter % 11 == 0
		player -= 1

			# Fail-Safe  to prevent players number became 0
			# it will make the variable player = to the number of the las player
		if player == 0
			player = members

			# Not nesesary: will inform what player gets skiped
		end
		puts "                                 Player #{player} skipt"
	end


		# substracting 1 to the variables received
	player -= 1
	counter += 1


		# fail-safe to reset player number if it goes below than 1
		# it will make the variable player = to the number of the las player
	if player <= 0
		player = members
	end


		# Not nesesary but provides better format on the output
		# it adds a extra space when player # is less than 10
	if player < 10
		space = " "
	else
		space = ""
	end


		# this if is not needed, it just provide a fancy output to the las player
	if counter == up_to
		puts "   ---------------------------------"
		puts 
		puts "    Player '#{player}' with the Number: #{counter} "


		# Output for each player this provide the folowing information:
		# 01 - What method was executed
		# 02 - What player turn is
		# 03 - What number such player said
	else
		puts "Back - Player: #{space}#{player} - Number: #{counter}"
	end

		# will exit this method and call the "forw()"" method to make players sequence go forward
		# will pass current value of parameters. 
	if counter % 7 == 0
			# the next line is Not nesesary: will inform the change of direction.
		puts "                                 Change direction"
		forw(members, up_to, counter, player)	
	end


		# will exit this method and call the "done()" method to end the game
	if counter == (up_to)
		done()
	end


	# will start this method again, pasing current value of parameters
		back(members, up_to, counter, player)
end



			# ------------------------ Another Method --------------------------

     # This method start the game getting the input from the user, and setting the variables. 
def game()
		# prints to anouce beginning of the game
	puts "----------------------------"
	puts "     THE COUNTING GAME"
	puts "----------------------------"
	puts "Yo know the rules, so lest play"
	puts

		# ask user for input
	puts "How many Players:"
		# Caputres user input
	members = gets.chomp.to_i
	puts

		# ask user for input
	puts "The counting wi go up to what number:"
		# Caputres user input
	up_to = gets.chomp.to_i
	puts

		# Prints to anounce beginnin of computations
	puts "    ---- Lest Count ----"
	puts 

		# declaring variables 
	counter = 0
	player = 0

		# will exit this method and call the "forw()" method to make players sequence go forward
		# will pass current value of parameters.
	forw(members, up_to, counter, player)
end



			# ------------------------ Another Method --------------------------

     # This method finish the game and ask if user whats to re start the game again
def done()

		# Anouce the end of the game
	puts
	puts "   -------  End of the game  -------"
	puts
	puts
		# prints question to ask if user want to  play again 
	puts "Would you like to play again? y/n"
		# captures answer from user
	regame = gets.chomp.to_s

		# analize user's answer if ys y will call method game() to start game again
	if regame == "y"
		puts " "
		puts " "
		game()

		# prints thansk before end of the program
	else
		puts
		puts "   *** Thansk for Playing *** "
		puts
		exit
	end

end

			# ------------------------ Calling Method --------------------------
	# calling the "game()" method to begin program.
game()



#---------------------------------------------------------
#     Test of Program Run

# ----------------------------
#      THE COUNTING GAME
# ----------------------------
# Yo know the rules, so lest play
#
# How many Players:
# 10
#
# The counting wi go up to what number:
# 100
#
#     ---- Lest Count ----
#
# Forw - Player:  1 - Number: 1
# Forw - Player:  2 - Number: 2
# Forw - Player:  3 - Number: 3
# Forw - Player:  4 - Number: 4
# Forw - Player:  5 - Number: 5
# Forw - Player:  6 - Number: 6
# Forw - Player:  7 - Number: 7
#                                  Change direction
# Back - Player:  6 - Number: 8
# Back - Player:  5 - Number: 9
# Back - Player:  4 - Number: 10
# Back - Player:  3 - Number: 11
#                                  Player 2 skipt
# Back - Player:  1 - Number: 12
# Back - Player: 10 - Number: 13
# Back - Player:  9 - Number: 14
#                                  Change direction
# Forw - Player: 10 - Number: 15
# Forw - Player:  1 - Number: 16
# Forw - Player:  2 - Number: 17
# Forw - Player:  3 - Number: 18
# Forw - Player:  4 - Number: 19
# Forw - Player:  5 - Number: 20
# Forw - Player:  6 - Number: 21
#                                  Change direction
# Back - Player:  5 - Number: 22
#                                  Player 4 skipt
# Back - Player:  3 - Number: 23
# Back - Player:  2 - Number: 24
# Back - Player:  1 - Number: 25
# Back - Player: 10 - Number: 26
# Back - Player:  9 - Number: 27
# Back - Player:  8 - Number: 28
#                                  Change direction
# Forw - Player:  9 - Number: 29
# Forw - Player: 10 - Number: 30
# Forw - Player:  1 - Number: 31
# Forw - Player:  2 - Number: 32
# Forw - Player:  3 - Number: 33
#                                  Player 4 skipt
# Forw - Player:  5 - Number: 34
# Forw - Player:  6 - Number: 35
#                                  Change direction
# Back - Player:  5 - Number: 36
# Back - Player:  4 - Number: 37
# Back - Player:  3 - Number: 38
# Back - Player:  2 - Number: 39
# Back - Player:  1 - Number: 40
# Back - Player: 10 - Number: 41
# Back - Player:  9 - Number: 42
#                                  Change direction
# Forw - Player: 10 - Number: 43
# Forw - Player:  1 - Number: 44
#                                  Player 2 skipt
# Forw - Player:  3 - Number: 45
# Forw - Player:  4 - Number: 46
# Forw - Player:  5 - Number: 47
# Forw - Player:  6 - Number: 48
# Forw - Player:  7 - Number: 49
#                                  Change direction
# Back - Player:  6 - Number: 50
# Back - Player:  5 - Number: 51
# Back - Player:  4 - Number: 52
# Back - Player:  3 - Number: 53
# Back - Player:  2 - Number: 54
# Back - Player:  1 - Number: 55
#                                  Player 10 skipt
# Back - Player:  9 - Number: 56
#                                  Change direction
# Forw - Player: 10 - Number: 57
# Forw - Player:  1 - Number: 58
# Forw - Player:  2 - Number: 59
# Forw - Player:  3 - Number: 60
# Forw - Player:  4 - Number: 61
# Forw - Player:  5 - Number: 62
# Forw - Player:  6 - Number: 63
#                                  Change direction
# Back - Player:  5 - Number: 64
# Back - Player:  4 - Number: 65
# Back - Player:  3 - Number: 66
#                                  Player 2 skipt
# Back - Player:  1 - Number: 67
# Back - Player: 10 - Number: 68
# Back - Player:  9 - Number: 69
# Back - Player:  8 - Number: 70
#                                  Change direction
# Forw - Player:  9 - Number: 71
# Forw - Player: 10 - Number: 72
# Forw - Player:  1 - Number: 73
# Forw - Player:  2 - Number: 74
# Forw - Player:  3 - Number: 75
# Forw - Player:  4 - Number: 76
# Forw - Player:  5 - Number: 77
#                                  Change direction
#                                  Player 4 skipt
# Back - Player:  3 - Number: 78
# Back - Player:  2 - Number: 79
# Back - Player:  1 - Number: 80
# Back - Player: 10 - Number: 81
# Back - Player:  9 - Number: 82
# Back - Player:  8 - Number: 83
# Back - Player:  7 - Number: 84
#                                  Change direction
# Forw - Player:  8 - Number: 85
# Forw - Player:  9 - Number: 86
# Forw - Player: 10 - Number: 87
# Forw - Player:  1 - Number: 88
#                                  Player 2 skipt
# Forw - Player:  3 - Number: 89
# Forw - Player:  4 - Number: 90
# Forw - Player:  5 - Number: 91
#                                  Change direction
# Back - Player:  4 - Number: 92
# Back - Player:  3 - Number: 93
# Back - Player:  2 - Number: 94
# Back - Player:  1 - Number: 95
# Back - Player: 10 - Number: 96
# Back - Player:  9 - Number: 97
# Back - Player:  8 - Number: 98
#                                  Change direction
# Forw - Player:  9 - Number: 99
#                                  Player 10 skipt
#    ---------------------------------
#
#     Player '1' with the Number: 100 
#
#    -------  End of the game  -------
#
#
# Would you like to play again? y/n
# n
#
#    *** Thansk for Playing ***
#
#---------------------------------------------------------