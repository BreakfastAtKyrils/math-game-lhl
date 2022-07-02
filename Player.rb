class Player
  attr_accessor :lives
  attr_reader :name

  def initialize (name, lives)
      @name = name
      @lives = lives
  end

  def render_lives
    "\u2764".encode('utf-8') * @lives
  end
end