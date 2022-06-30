#this class takes in 2 random numbers and an operation 
class Problem
  attr_reader :answer
  attr_writer :num1, :num2, :operation

  def initialize(num1, num2, operation)
    @num1 = num1
    @num2 = num2
    @operation = operation
    @answer = eval("#{@num1} #{@operation} #{@num2}")
  end

  def ask_Q
    puts "What is #{@num1} #{@operation} #{@num2} ?"
  end
end


##-----------testing below-------------##

=begin
Q = Problem.new(300, 2, '/')
Q.ask_Q
user_answer = gets.chomp.to_i
puts "You answered: #{user_answer}"
if user_answer == Q.answer
  puts "correct! good job"
else
  puts "wrong! you lose 1 life!"
end
=end
