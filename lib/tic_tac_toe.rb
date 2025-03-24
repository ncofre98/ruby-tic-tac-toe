class TicTacToe
  attr_accessor :board, :player1, :player2

  def initialize()
    @board = Board.new
    puts "Introduce the name of player 1:\n"
    @player1 = Player.new(gets.chomp, 'O')
    puts "Introduce the name of player 2:\n"
    @player2 = Player.new(gets.chomp, 'X')
  end

  def play
    winner = nil
    moves = 0
 
    while (!board.finished)
      figure = current_player(moves).figure
      puts "#{board}\n"
      ask_player(moves)
      if (board.winning_combination?(figure) || moves == 8)
        board.finished = true
        if (board.winning_combination?(figure))
            winner = current_player(moves)
            winner.score += 1
        end
        break
      end
      moves += 1
    end

    puts "#{board}\n"
    winner ? display_winner(winner) : display_draw
  end

  private
  def display_winner(player)
    puts "Congratulations!!!"
    puts "#{player.name} WON!"
  end

  def display_draw
    puts "It's a draw!"
  end

  def current_player(moves)
    moves.even? ? self.player1 : self.player2
  end

  def ask_player(moves)
    loop do
      current_player = current_player(moves)
      puts "It's your turn #{current_player.name}"
      puts "Insert your choice (1-9)"
      choice = gets.chomp.to_i - 1
      if ['X', 'O'].include?(self.board.grid[choice])
        puts "Invalid! That square is occupied. Try again"
        next
      end
      make_move(choice, current_player.figure)
      break
    end
  end

  def make_move(index, figure)
    self.board.grid[index] = figure
  end
end
