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

  def correct_response?(num)
    return @answer == num
  end
end
