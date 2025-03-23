class Player
  @score = 0
  attr_accessor :name, :score, :figure
  def initialize(name, figure)
    @name = name.capitalize
    @figure = figure
  end
end
