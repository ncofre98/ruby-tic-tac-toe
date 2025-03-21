class Player
  @score = 0
  attr_accessor :name, :score
  def initialize(name)
    @name = name.capitalize
  end
end
