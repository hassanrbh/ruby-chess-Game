require './lib/piece.rb'

class Pawn < Piece
  def to_s
    color == :black ? "♟ " : "♙ "
  end
  def move_dirs
    [[0,1]]
  end
  
end