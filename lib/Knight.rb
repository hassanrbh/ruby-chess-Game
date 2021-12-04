class Knight
    attr_reader :color
    def initialize(color)
        @color = color
    end

    def to_s
        color == :black ? "♞" : "♘"
    end

    def move_dirs
        # don't forget to implement knight moves
    end
end