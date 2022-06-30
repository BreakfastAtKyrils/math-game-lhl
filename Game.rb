require './Player.rb'
require './Turn.rb'
require './Problem.rb'

class Game

  attr_accessor :players
  def initialize
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
    puts "Welcome to our boring Math game, #{players[0].name} and #{players[1].name}. Even worse than a bottomed-out queue. Enjoy if possible."
    puts "The rules are as follows: Taking turns, input your answer to the math question.\n 
    If the answer is incorrect, you will lose 1 life.\n
    The first player to lose all lives loses the game! "
    puts " -------------------------------------------------------------------"
  end

  def run_game
    initial_greeting_and_rules()

    active_player_id = rand(2)
    puts "The randomly-selected first player is: #{players[active_player_id].name}"
        
    while !game_over?(players)
      #to refactor
      puts "NEW TURN: GET READY TO MATH!"

      #turn (active player)
      current_turn = Turn.new(players[active_player_id])
      current_turn.display_question
      answer = current_turn.get_answer

      if !current_turn.validate_answer(answer)
        players[active_player_id].lives -= 1
      end

      puts "#{players[0].name}: #{players[0].lives} --- #{players[1].name}: #{players[1].lives}"

      active_player_id = (active_player_id + 1) % @num_of_players 
    end

    puts "The game is over. #{@players[active_player_id].name} is the supreme champion!"
  end
end