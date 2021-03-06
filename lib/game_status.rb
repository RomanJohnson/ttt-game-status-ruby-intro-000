# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
    ]

    def won?(board)


    WIN_COMBINATIONS.each do |win_combination|

    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
      return win_combination if position_1 == "O" && position_2 == "O" && position_3 == "O" || position_1 == "X" && position_2 == "X" && position_3 == "X"
          # return the win_combination indexes that won.
        end
        else
          false
    end
  def full?(board)
      board.none?{ |character| character == " " }
    #    full_board = true
  end


  def draw?(board)
a = full?(board)
b = won?(board)
    return true if a == true && b == false
  end

def over?(board)

  if draw?(board) == true || won?(board).is_a?(Array) == true
     true
  else
    false
end
end

def winner(board)
  if won?(board) == false
    nil
  else board[won?(board)[0]]
end
end
