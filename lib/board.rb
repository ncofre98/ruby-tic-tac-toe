SQUARES = 9

class Board
  attr_accessor :board
  def initialize
    @board = ['*'] * SQUARES
  end

  def to_s
    board.each_with_index.reduce("") do |output, (square, index)|
      output << "\n" if index % 3 == 0 && index != 0
      output << "#{square} "
    end
  end
end
