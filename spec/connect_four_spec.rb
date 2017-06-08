require "connect_four"
describe ConnectFour do

  describe ".initialize" do
    context "With a new game" do
      let(:game){ConnectFour.new("Josh","Amanda")}
      it "initialzes player names" do
        expect(game.p1).to eql("Josh")
        expect(game.board.length).to eql(6)
        expect(game.board[0].length).to eql(0)
      end
    end
  end
  describe ".move" do
    context "When a new move is made" do
      let(:game){ConnectFour.new("Josh","Amanda")}
      it "places the number of the player into that space" do
        expect(game.move(game.p1,3)).to 
      end
    end
  end



end
#expect(ConnectFour.new("j","a").board.length.length).to eql("6")
