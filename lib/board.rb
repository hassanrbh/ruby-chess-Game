class Board
  attr_reader :grid

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