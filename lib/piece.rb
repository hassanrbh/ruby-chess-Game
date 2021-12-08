class Piece
  attr_reader :board ,:color, :locations
  def initialize(board, locations,color)
    @color = color
    @board = board
    @locations = locations
  end

  def enemy?(location)
    !board[location].nil? && board[location].color != color
  end
end
