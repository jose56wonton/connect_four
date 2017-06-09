class ConnectFour
  attr_accessor  :board, :current_player
  def initialize
    @board = [[],
    [],
    [],
    [],
    [],
    [],
    []]
    @current_player = rand(2)+1
  end
  def move?(col)
    if @board[col].length < 6
      @board[col]<<@current_player
      if victory == 0
        other_player
      end
      puts victory
      return true
    end
    return false
  end
  def other_player
    @current_player == 1 ? (@current_player+=1) : (@current_player-=1)
  end
  def print
    string = "*-------*\n"
    6.times do |i|
      string << "|"
      7.times do |j|
        board[j][5-i].nil? ? (string << " ") : (string << board[j][5-i].to_s)
      end
      string <<"| \n"
    end
    string << "*-------*"
    puts string
  end
  def victory
    count1 = 0
    count2 = 0
    #veritcal
    7.times do |i|
      6.times do |j|
        if @board[i][j] == 1
          count1 += 1
          count2 = 0
          return 1 if count1 == 4
        elsif @board[i][j] == 2
          count2 += 1
          count1 = 0
          return 2 if count2 == 4
        else
          count1 = 0
          count2 = 0
        end
      end
    end
    #horizontal
    6.times do |j|
      7.times do |i|
        if @board[i][j] == 1
          count1 += 1
          count2 = 0
          return 1 if count1 == 4
        elsif @board[i][j] == 2
          count2 += 1
          count1 = 0
          return 2 if count2 == 4
        else
          count1 = 0
          count2 = 0
        end
      end
    end
    #diagonal
    @board.each_with_index do |dummy, i|
      @board[i].each_with_index do |yummd, j|
        #I know this is so dirty...
        if (i < 4 && j < 3 && @board[i][j] != nil && @board[i][j] == @board[i+1][j+1] && @board[i+1][j+1] == @board[i+2][j+2] && @board[i+2][j+2] == @board[i+3][j+3])
					return @board[i][j]
				elsif (i < 4 && j >= 3 && @board[i][j] != nil && @board[i][j] == @board[i+1][j-1] && @board[i+1][j-1] == @board[i+2][j-2] && @board[i+2][j-2] == @board[i+3][j-3])
					return @board[i][j]
				end
      end
    end
    return 0

  end
  def full?
    full = true
    7.times do |i|
      full = false if @board[i].length != 6
    end
    full
  end

end
