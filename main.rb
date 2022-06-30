require './Player'
require './Turn'

require './Game.rb'
require './Display.rb'

math_game = Game.new
puts math_game.game_over?(players) #should return false
math_game.players[0]['lives'] = 0 #player 1 loses muhahaha
puts math_game.game_over?(players) #should return true