require_relative 'connect_four.rb'
game = ConnectFour.new
game.print

loop do

  puts "Choose a drop location(0 to 6) Player #{game.current_player}..."
  input = gets.chomp
  if !game.move?(input.to_i)
    loop do
      puts "That column is full try another"
      input = gets.chomp
      break if input
    end
  end
  system("clear")
  game.print
  break if game.victory != 0 || game.full?
end
game.full? ? (puts "Its a tie!") : (puts "Congrat Player #{game.current_player}. You won!")
