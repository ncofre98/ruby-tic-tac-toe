class Player
  attr_accessor :name, :score, :figure
  def initialize(name, figure)
    @score = 0
    @name = name.capitalize
    @figure = figure
  end
end
