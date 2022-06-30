class Game
  includes Display
  
  def initialize
    #setup array with player objects --> lives are inside the player object
    @num_of_players = 2
    players = [
      Player.new("Player1", 3),
      Player.new("Player2", 3)
    ] 
    Display.greeting(players)
    Display.show_rules
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
    
    winner_id = active_player_id - 1 % @num_of_players
    
    Display.end_game(players['winner_id'])
  end
end

math_game = Game.new()
math_game.run_game 