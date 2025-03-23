class TicTacToe
  attr_accessor :board

  def initialize()
    @board = Board.new
    puts "Introduce the name of player 1:\n"
    @player1 = Player.new(gets.chomp, 'O')
    puts "Introduce the name of player 2:\n"
    @player2 = Player.new(gets.chomp, 'X')
  end

  def play
    moves = 0
    while (!board.finished || moves <= 9)
      puts "#{board}\n"
      ask_player(moves)
      break if board.winning_combination?(current_player(moves).figure)
    end
  end

  private
  def display_winner(player)
    puts "Congratulations!!!"
    puts "#{player} WON!"
  end

  def display_draw
    puts "It's a draw!"
  end

  def current_player(moves)
    moves.even? ? self.player1 : self.player2
  end

  def ask_player(moves)
    current_player = current_player(moves)
    puts "It's your turn #{current_player.name}"
    puts "Insert your choice (1-9)"
    choice = gets.chomp.to_i - 1
    if self.board.grid[choice].in?('X', 'O')
      puts "Invalid! That square is occupied. Try again"
      ask_player(moves)
    end
    make_move(choice, current_player.figure)
    moves += 1
  end

  def make_move(index, figure)
    self.board.grid[index] = figure
  end
end
