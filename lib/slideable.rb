module Slideable
  def available_moves?
    moves = []
    move_dirs.each do |(dx, dy)| # loop throught the move positions
      # 1. slide upto a piece of his own color
      current_x, current_y = self.locations # take the current position in the board
      loop do 
        current_x += dx
        current_y += dy
        loc = [current_x,current_y]
        break if !board.in_bounds?(loc)
        if board.empty?(loc) # don't forget to complet
          moves << loc
        end 
        if enemy?(loc)
          moves << loc
          break
        end

      end
      # 2. slide upto an including 1 more square if it an anemy piece
    end
    moves
  end
end