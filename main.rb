require 'pry-byebug'

require_relative 'lib/board'
require_relative 'lib/player'
require_relative 'lib/tic_tac_toe'

game = TicTacToe.new
game.play
