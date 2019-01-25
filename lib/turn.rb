def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(integer)
  integer.to_i - 1
end



def user_input(board, index, character)
  index.between(0, 8)
end

def position_taken?(board, index)
  if (board[index] ==  " " || board[index] == "" || board[index] == nil)
    false
  else
    true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && !(position_taken?(board, index))
  true
  end
end

def move(board, position, token)
  update_array_at_with(board, position, token)
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def position_taken
  if array[index] = "X" or "O"
    puts "false"
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
end

def turn(board, index, current_player)
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index, current_player)
      move(board, index, current_player(board))
      turn(board)
   end
   display_board(board)
end