class Turn
  @@number_of_turns = 0

  # initialize with active player
  def initialize (active_player) 
    @active_player = active_player
    @problem = Problem.new(rand(20) + 1, rand(20) + 1, '+')
    @@number_of_turns += 1
  end

  #ask question
  def display_question
    puts "#{@active_player.name}: #{@problem.ask_Q}"
  end

  #get answer
  def get_answer
    return gets.chomp.to_i
  end

  #validate answer + feedback 
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

