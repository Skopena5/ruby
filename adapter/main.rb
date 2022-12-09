require './models.rb'
require './adapter.rb'

console = PalConsole.new

final_fantasy = NtscGame.new("Final Fantasy")

adapter = NtscToPalAdatper.new(final_fantasy)

console.play_game(adapter)