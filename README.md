TicTacToe console game
=======
Another version console game. While the game supports play against real people. Computer player will be later.
## Installation

Add this line to your application's Gemfile:

gem 'tic_tac_toe_ru'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tic_tac_toe_ru

## Usage

TODO: require 'tic_tac_toe_ru'

Create two players:

    $ current_player = TicTacToeRu::Player.new(name: "Евгений", symbol: "X")
    
    $ other_player = TicTacToeRu::Player.new(name: "Виктор", symbol: "0")
    
Then create the game and play it. Enjoy it :)

    $ TicTacToeRu::Game.new(current_player, other_player).play

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
