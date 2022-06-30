require './Player.rb'

players = [
      Player.new("Player1", 3),
      Player.new("Player2", 0)
] 

puts players[0].name

def game_over?(players) 
  players.each do |player|
    if player.lives == 0
      return true
    end
  end
  return false
end

puts game_over?(players)