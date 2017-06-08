class ConnectFour
  attr_accessor :p1, :p2, :board
  def initialize(x,y)
    @p1 = x
    @p2 = y
    @board = [[],
    [],
    [],
    [],
    [],
    []]
  end

  def move(player,col)
    @board.each do |index|
      if @board[6-index][col].nil?
        @board[6-index][col] = 1 if player = @p1
        @board[6-index][col] = 2 if player = @p2
      end
    end
  end



  def game
    do loop




      if victory







end
