module Stepable
  def available_moves?
    moves = []
    move_dirs.each do |(dx, dy)| # loop throught the move positions
      # 1. slide upto a piece of his own color
      current_x, current_y = self.locations # take the current position in the board 
        current_x += dx
        current_y += dy
        loc = [current_x,current_y]
        next if !board.in_bounds?(loc)
        if board.empty?(loc) || enemy?(loc) # don't forget to complet
          moves << loc
        end
      # 2. slide upto an including 1 more square if it an anemy piece
    end
    moves
  end
end