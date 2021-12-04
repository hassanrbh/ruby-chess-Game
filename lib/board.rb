require './lib/pawn.rb'
require './lib/rook.rb'
require './lib/king.rb'
require './lib/bishop.rb'
require './lib/queen.rb'

class Board
  attr_reader :grid

  def self.start_chess
    board = self.new

    8.times do |ro|
      board[[1,ro]] = Pawn.new(:black)
      board[[6,ro]] = Pawn.new(:white)
    end
    board[[0,0]] = Rook.new(:black)
    board[[0,7]] = Rook.new(:black)
    board[[7,0]] = Rook.new(:white)
    board[[7,7]] = Rook.new(:white)

    board
  end
  def initialize
    @grid = Array.new(8) {Array.new(8)}
  end

  def []=(location, piece)
    row,columns = location
    grid[row][columns] = piece
  end

  def [](location) # give the value
    row,columns = location
    grid[row][columns]
  end

  def in_bounds?(locations) # check for the location in_bounds
    row,columns = locations

    row < grid.length && columns < grid.first.length && row >= 0 && columns >= 0
  end
end


# place_pieces
# out of bounds
# get a piece