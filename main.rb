require_relative './lib/board.rb'
require_relative './lib/board_render_text.rb'
require_relative './lib/pieces.rb'

b = Board.start_chess

text_board = BoardRenderText.new(b)

p text_board