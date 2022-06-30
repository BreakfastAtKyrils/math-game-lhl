require './Game.rb'

math_game = Game.new
  puts math_game.game_over?(math_game.players) #should return false
  math_game.players[0].lives = 0 #player 1 loses muhahaha
  puts math_game.game_over?(math_game.players) #should return true