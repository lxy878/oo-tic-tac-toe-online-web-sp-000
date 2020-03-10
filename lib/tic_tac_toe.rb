class TicTacToe
  attr_accessor :board
  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]
  def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(index)
    index-1
  end

  def move(index, player)
    @board[index]= player
  end

  def position_taken?(index)
    @borad[index]=="X" or @borad[index]=="O"
  end

  def valid_move?(index)
    !position_taken?(index) and @borad[index]!=nil
  end

  def turn_count
    valid = @borad.find_all {|position| position !=" "}
    valid.size
  end

  def current_player
    if turn_count%2 != 0
      return "X"
    else
      return "O"
    end
  end

  def turn
    position = gets.chomp
    index = input_to_index(position.to_i)
    if valid_move(index)
      move(index,current_player)
    else
      turn
    end
  end

  def won?
    #check board

    # if won, return true
    # otherwise, returne false
  end

  def full?
    !@borad.include?(" ")
  end

  def draw?
    # won? == true, false
    # otherwise,
      #full? == true, true
      #otherwise, false

  end
end
