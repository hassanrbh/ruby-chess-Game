# This function will take the input as the board and render it nicly
class BoardRenderText
  attr_reader :board
  def initialize(board)
    @board = board
  end
  
  def render
    8.times do |row|
      puts "----------"
      8.times do |columns|
        print board[[row,columns]]
      end
    end

  end


end