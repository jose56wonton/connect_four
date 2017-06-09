# Connect_four


This is my implementation of the Connect Four game in Ruby w/ the command line.

It has three files:
* `lib/connect_four.rb` contains the ConnectFour class.
* `lib/start.rb` is the code to get a game up in running
* `spec/connect_four_spec.rb` is the specifications for the ConnectFour class

The ConnectFour class includes `initialize`, `move?`,`other_player`, `print`, `victory`, and `full?` methods.

* `move?` is what is used to drop a coin into the cage. It is a predicate method
because if a column is full it makes the player choose a different one.
* `other_player` switches the current_player variable back and forth
* `victory` assesses the board and returns the victors number if there is one
* `full?` returns true if the cage is full and false otherwise

My biggest regret for this project is my datastructure. I used a matrix and then
basically just printed it backwards so that i could append to columns easily.
If I had to do it over again I would make a `board.rb` class to represent the cage.

Use `ruby lib/start.rb` to start a game, and `bundle exec rspec` to run the specs.

Note this assumes that you have [Bundler](http://bundler.io/) installed. Use `bundle install --path .bundle` if you don't.


This project is part of [TheOdinProject's](http://www.theodinproject.com) Ruby track.
The project itself can be seen [here](https://www.theodinproject.com/courses/ruby-programming/lessons/testing-ruby)!
