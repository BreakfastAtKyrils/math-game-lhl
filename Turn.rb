class Turn
  @@number_of_turns = 0

  def initialize (active_player) 
    @active_player = active_player
    @problem = Problem.new(rand(20) + 1, rand(20) + 1, '+')
    @@number_of_turns += 1
  end

  def display_question
    puts "#{@active_player.name}: #{@problem.ask_Q}"
  end

  def get_answer
    return gets.chomp.to_i
  end

  def validate_answer(answer)
    if @problem.correct_response?(answer)
      puts "You rock at Math!" 
      return true
    else
      puts "You lose a life!"
      return false
    end
  end
end

