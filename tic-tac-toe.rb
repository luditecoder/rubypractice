#Set up a player with a name that you can set each value as.
#create a board that is updated as it changes. One to visualize and another one that is a hash with the space as key and who owns it as value. 
#create a method that checks to see if either player has three in a row. some how write program that checks horizontal vertical and diagonal. 

@current player

@board = "__  __  __/n __  __  __/n __  __  __" 

def board
  if @current_player == player1 
  @symbol = X
  elsif @current_player == player2
  @symbol = O
end 


def player1_turn
board = Hash.new{ 1 => blank, 2 => blank, 3 => blank, 4 => blank, 5 => blank, 6 => blank, 7=> blank, 8 => blank, 9 => blank}




@current_player = player1
puts "Where would you like to move this turn (top, middle, bottom and left, center, right)?"
move = $stdin.gets.chomp
  case move 
  if move.include?(top && left)
  @board[0] = X
  elsif move.include?(top && center)
  @board[1] = X
  elsif move.include?(top && right)
  @board[2] = X
  elsif move.include?(middle && left)
  @board[3] = X
  elsif move.include?(middle && center)
  @board[4] = X
  elsif move.include?(middle && right)
  @board[5] = X
  elsif move.include?(bottom && left)
  @board[6] = X
  elsif move.include?(bottom && center)
  @board[7] = X
  elsif move.include?(bottom && right)
  @board[8] = X
  end 
  
  
end 





