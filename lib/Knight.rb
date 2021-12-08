class Knight < Piece
  include Stepable
    def to_s
        color == :black ? "♞ " : "♘ "
    end

    def move_dirs
        [
        ]
    end
end