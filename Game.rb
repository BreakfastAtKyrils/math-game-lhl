#require './Player'
#require './Turn'

class Game
  includes Display

  attr_accessor :players
  
  def initialize
    #setup array with player objects --> lives are inside the player object
    @num_of_players = 2
    @players = [
      Player.new("Player1", 3),
      Player.new("Player2", 3)
    ] 
    #greeting(players)
    #show_rules
  end

  def game_over?(players) 
    players.each do |player|
      if player['lives'] == 0
        return true
    end
    false
  end

  def run_game
    #initialize active_player
    active_player_id = rand(2)
        
    #game_over returns true if a player have 0 lives
    while !game_over(players)
      Turn.new(active_player)

      #change active player
      active_player_id = (active_player_id + 1) % @num_of_players 
    end
  end
  #winner_id = active_player_id - 1 % @num_of_players
    
end


