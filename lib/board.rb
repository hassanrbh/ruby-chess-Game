require './lib/pawn.rb'
require './lib/rook.rb'
require './lib/king.rb'
require './lib/bishop.rb'
require './lib/queen.rb'
require './lib/Knight.rb'

class Board
  attr_reader :grid

  def self.start_chess
    board = self.new

    8.times do |ro|
      board[[1,ro]] = Pawn.new(self,[1,ro],:black)
      board[[6,ro]] = Pawn.new(self,[6,ro],:white)
    end
    [[0,:black],[7,:white]].each do |(r,color)|
      board[[r,0]] = Rook.new(self,[r,0] , color)
      board[[r,7]] = Rook.new(self,[r,7] , color)
      board[[r,1]] = Knight.new(self,[r,1] , color)
      board[[r,6]] = Knight.new(self,[r,6] , color)
      board[[r,2]] = Bishop.new(self,[r,2] , color)
      board[[r,5]] = Bishop.new(self,[r,5] , color)
    end
    board[[0,3]] = King.new(self, [0,3] ,:black)
    board[[0,4]] = Queen.new(self, [0,4] , :black)
    board[[7,3]] = King.new(self, [7,3] , :white)
    board[[7,4]] = Queen.new(self, [7,4] , :white)

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

  def in_bounds?(locations) # do not go out of the range if go out break 
    row,columns = locations

    row < grid.length && columns < grid.first.length && row >= 0 && columns >= 0
  end
  def empty?(locations)
    row,columns = locations
    grid[row][columns].nil?
  end
end


# place_pieces
# out of bounds
# get a piece