# This function will take the input as the board and render it nicly
class BoardRenderText
  attr_reader :board
  def initialize(board)
    @board = board
  end
  
  def render
    8.times do |row|
      puts "----------------"
      8.times do |columns|
        pieces = board[[row,columns]]
        if pieces.nil?
          print " "
        else
          print "#{board[[row,columns]]}"
        end
      end
      puts ""
    end

  end
end
