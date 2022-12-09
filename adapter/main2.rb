require './models.rb'
console = PalConsole.new

class NtscGame < Game
	def play
		run #дополняем класс NtscGame
	end
end

final_fantasy = NtscGame.new("Final Fantasy")

double_dragon = NtscGame.new("Double Dragon")

console.play_game(final_fantasy)

console.play_game(double_dragon)