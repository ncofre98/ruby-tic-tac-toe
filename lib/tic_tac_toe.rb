class TicTacToe
  attr_accessor :board

  def initialize()
    @board = Board.new
    puts "Introduce the name of player 1:\n"
    @player1 = Player.new(gets.chomp)
    puts "Introduce the name of player 2:\n"
    @player2 = Player.new(gets.chomp)
  end

  def play
    while (!board.finished)
      
    end
  end

  private
    def display_winner(player)
    puts "Congratulations!!!"
    puts "#{player} WON!"
  end
end
