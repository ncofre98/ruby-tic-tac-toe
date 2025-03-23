SQUARES = 9

class Board
  attr_accessor :grid, :finished
  def initialize
    @finished = false
    @grid = ['*'] * SQUARES
  end

  def reset
    initialize
  end

  def to_s
    grid.each_with_index.reduce("") do |output, (square, index)|
      output << "\n" if index % 3 == 0 && index != 0
      output << "#{square} "
    end
  end

  def winning_combination?(figure)
    winning_indices = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
                       [0, 3, 6], [1, 4, 7], [2, 5, 6],
                       [0, 4, 8], [6, 4, 2]]
    winning_indices.each do |indexes|
      return true if indexes.all? { |i| self.grid[i] == figure }
    end
    false
  end
end
