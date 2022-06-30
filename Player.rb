class Player
  attr_accessor :lives
  attr_reader :name

  def initialize (name, lives)
      @name = name
      @lives = lives
  end
end