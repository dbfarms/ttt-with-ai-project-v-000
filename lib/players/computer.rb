module Players
  class Computer < Player
    def move(board)
      #binding.pry
      valid_moves = []
      board.cells.each_with_index do |s, i|
        if s == " "
          valid_moves << (i+1).to_s
        end
      end
      #valid_moves
      #binding.pry
      best_moves = []
      WIN_COMBINATIONS.each do |combo|
        if @board.cells[combo[0]] == @board.cells[combo[1]]  &&  @board.cells[combo[2]] == " "
          if @board.cells[combo[0]] != " "
            return @board.cells[combo[0]]
          end
        end
      return valid_moves[0]

    end
  end
end
