require_relative './lib/board.rb'
require_relative './lib/pawn.rb'
require_relative './lib/rook.rb'
require_relative './lib/king.rb'
require_relative './lib/bishop.rb'
require_relative './lib/board_render_text.rb'
require_relative './lib/queen.rb'

b = Board.new

text_board = BoardRenderText.new()

puts text_board.render


