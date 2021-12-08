
require_relative './lib/pieces.rb'
require_relative './lib/board.rb'
require_relative './lib/board_render_text.rb'
b = Board.new
b[[3,1]] = King.new(b, [3,1],:black) # ♜
p b[[3,1]].available_moves?


 #  text_board = BoardRenderText.new(Board.start_chess)

 # puts text_board.render


