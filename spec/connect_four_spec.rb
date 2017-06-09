require "connect_four"
describe ConnectFour do

  describe ".initialize" do
    context "With a new game" do
      let(:game){ConnectFour.new}
      it "initialzes player names" do
        expect(game.current_player).to be>0
        expect(game.current_player).to be<3
        expect(game.board.length).to eql(7)
        expect(game.board[0].length).to eql(0)


      end
    end
  end
  describe ".move" do
    context "When a new move is made" do
      let(:game){ConnectFour.new}
      it "places the number of the player into that space" do
        expect{game.move?(2)}.to change{game.board[2].length}.from(0).to(1)
      end
    end
  end
  describe ".other_player" do
    context "When other_player is called" do
      let(:game){ConnectFour.new}
      it "it changes the current player from 1 to 2 or vice versa" do
        game.current_player = 1
        expect{game.other_player}.to change{game.current_player}.from(1).to(2)
      end
    end
  end
  describe ".full?" do
    context "When the board is filled up" do
      let(:game){ConnectFour.new}
      it "the full? method return true" do
        game.board = [[1,1,2,2,1,1],
                    [2,2,1,1,2,2],
                    [1,1,2,2,1,1],
                    [2,2,1,1,2,2],
                    [1,1,2,2,1,1],
                    [2,2,1,1,2,2],
                    [1,1,2,2,1,1]]
        expect(game.full?).to eql(true)
      end
    end
  end
  describe ".victory" do
    context "When the board has four of the same number in a row horizontally or vertically" do
      it "the victory method should return the victor's number" do
        game = ConnectFour.new
        #veritcal
        game.board = [[1,1,2,2,2,2],[],[],[],[],[],[]]
        expect(game.victory).to eql(2)
        game.board = [[1,1,1,1,2,2],[],[],[],[],[],[]]
        expect(game.victory).to eql(1)
        game.board = [[],[],[],[],[],[],[1,1,2,2,2,2]]
        expect(game.victory).to eql(2)
        game.board = [[],[],[],[],[],[],[1,1,1,1,2,2]]
        expect(game.victory).to eql(1)
        #horizontal
        game.board = [[1],[1],[1],[1],[],[],[]]
        expect(game.victory).to eql(1)
        game.board = [[],[],[],[2],[2],[2],[2]]
        expect(game.victory).to eql(2)

      end
    end


    context "When the board has four of the same number in a row diagonally" do
      it "the victory method should return the victor's number" do
        game = ConnectFour.new
        #diagonal
        game.board = [[1],[2,1],[1,2,1],[2,1,2,1],[],[],[]]
        expect(game.victory).to eql(1)
        game.board = [[],[],[],[2,1,2,1],[1,2,1],[2,1],[1]]
        expect(game.victory).to eql(1)
        game.board = [[],[],[],[2,6,1],[3,6,7,1],[4,5,6,8,1],[4,9,5,6,4,1]]
        expect(game.victory).to eql(1)
        game.board = [[4,9,5,6,4,1],[4,5,6,8,1],[3,6,7,1],[2,6,1],[],[],[]]
        expect(game.victory).to eql(1)

      end
    end
  end



end
#expect(ConnectFour.new("j","a").board.length.length).to eql("6")
