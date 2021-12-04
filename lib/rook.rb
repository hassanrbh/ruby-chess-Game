class Rook
  attr_reader :color
  def initialize(color)
    @color = color
  end

  def color
    color == :black ? "♘" : "♞"

  end
  def move_dirs
    [
      [1,2],
      [2,1],
      [-1,2],
      [-2,1],
      [2,-1],
      [1,-2],
      [-1,-2],
      [-2,-1]
    ]
  end


end