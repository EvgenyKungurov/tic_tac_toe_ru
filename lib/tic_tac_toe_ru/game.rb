# coding: utf-8
module TicTacToeRu
  class Game
    attr_accessor :current_player, :other_player
    
    def initialize(*players)
      @current_player, @other_player = players.shuffle
      @board = TicTacToeRu::Board.new
    end

    def play
      puts "Игра началась"
      @board.grid_draw
      loop do
        puts "Игрок #{@current_player.name} делает ход:"
        @board.symbol = @current_player.symbol
        begin
          puts "Выберите ячейку:"
          value = gets.chomp.to_i
          raise "Вы ввели не числовое значение или такой ячейки не существует, попробуйте еще раз!" if value == 0 || value > 9
          raise "Эта ячейка уже занята, выберете другую!" unless @board.check_free_cell(value)
        rescue Exception => e
          puts e
          puts "\n"
          retry
        end
        @board.next_move(value)
        @board.grid_draw
        break puts "Ничья! :)" if draw
        break puts "Игрок #{@current_player.name} победил" if winner
        switch_player
      end
    end

    private

    def winner
      @board.win_positions?
    end

    def draw
      @board.no_free_ceels?
    end

    def switch_player
      @current_player, @other_player = @other_player, @current_player
    end
  end
end