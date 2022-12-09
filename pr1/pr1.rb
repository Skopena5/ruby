mass = ["rock", "paper", "scissors"]
player1_number = rand(2)
mass_game = mass[player1_number]
print "Input rock, paper or scissor: "
player2 = gets.chomp

if mass_game == "rock"
	if player2 == "rock"
		puts "Draw"
	elsif player2 == "scissor"
		puts "You lose"
	else player2 == "paper"
		puts "You win"
	end
elsif mass_game == "paper"
	if player2 == "paper"
		puts "Draw"
	elsif player2 == "rock"
		puts "You lose"
	else player2 == "scissor"
		puts "You win"
	end
elsif mass_game == "scissor"
	if player2 == "scissor"
		puts "Draw"
	elsif player2 == "paper"
		puts "You lose"
	else player2 == "rock"
		puts "You win"
	end
else
	puts "Enter your choise in downcase(like 'rock')"
end
puts "Computer choise was #{mass_game}"