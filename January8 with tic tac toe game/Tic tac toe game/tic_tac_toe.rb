class TicTacToe

  attr_accessor :board

  def initialize
    @board = Array.new(9, " ")
  end

  WINNING_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]

  def show_board
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts "---------"
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts "---------"
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
  end

  def input_to_index(input)
    (input.to_i) - 1
  end

  def move(position, player='X')
    @board[position] = player
  end

  def position_taken?(input)
    @board[input] == "X" || @board[input] == "O"
  end

  def valid_move?(input)
    input.between?(0, 8) && !position_taken?(input)
  end

  def turn
    puts "Dear Players, welcome to TicTacToe game"
    puts "Please input number from 1-9 to put X or O on the board"
    place = gets.strip
    place = input_to_index(place)
    if valid_move?(place)
      move(place, current_player)
    else
      turn
    end
    show_board
  end

  def turn_counter
    occupied = 0
    @board.each do |n|
      if n == "X" || n == "O"
        occupied += 1
      end
    end
    occupied
  end

  def current_player
    player = nil
    if turn_counter() % 2 == 0
      player = "X"
    else
      player = "O"
    end
    return player
  end

  def won?
    WINNING_COMBINATIONS.detect do |combination|
      @board[combination[0]] == @board[combination[1]] && @board[combination[1]] == @board[combination[2]] && position_taken?(combination[0])
    end
  end

  def draw?
    full? && !won?
  end

  def full?
    turn_counter == 9
  end

  def over?
    draw? || won? || full?
  end

  def winner
    won = ""
    if winner = won?
      won = @board[winner.first]
    end
  end

  def play
    until over?
      turn
    end

    if won?
      winner = winner()
      puts "Contratulations, #{winner} you won!"
    elsif draw?
      puts "Its a draw"
    end
  end
end

ttt = TicTacToe.new
ttt.play
