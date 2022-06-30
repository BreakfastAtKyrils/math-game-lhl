require './Player.rb'
require './Turn.rb'
require './Display.rb'
require './Problem.rb'

class Game
  include Display

  attr_accessor :players
  def initialize
    #setup array with player objects --> lives are inside the player object
    @num_of_players = 2
    @players = [
      Player.new("Player1", 3),
      Player.new("Player2", 3)
    ] 
  end

  def game_over?(players) 
    players.each do |player|
      if player.lives == 0
        return true
      end
    end
    return false
  end

  def initial_greeting_and_rules
    #print player greeting
    puts "Welcome to our boring Math game, #{players[0].name} and #{players[1].name}. Even worse than a bottomed-out queue. Enjoy if possible."
    #print rules
    puts "The rules are as follows: Taking turns, input your answer to the math question. The first player to lose all lives loses the game! "
    puts " -------------------------------------------------------------------"
  end

  def run_game
    initial_greeting_and_rules()

    #initialize active_player 
    active_player_id = rand(2)
    puts "The randomly-selected first player is: #{players[active_player_id].name}"
        
    #game_over returns true if a player have 0 lives
    while !game_over?(players)
      #active players takes their turn
      #Turn.new(active_player)
      puts "test turn for #{players[active_player_id].name}"
      players[active_player_id].lives -= 1

      #change active player
      active_player_id = (active_player_id + 1) % @num_of_players 
    end
    winner_id = active_player_id - 1 % @num_of_players  
    puts "The game is over. #{@players[winner_id].name} is the supreme champion!"
  end
end