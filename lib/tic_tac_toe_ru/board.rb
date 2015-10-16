# coding: utf-8
module TicTacToeRu
  class Board
    WIN_POS = lambda { |arr| arr.all? { |el| el == arr.first } == true }

    attr_reader :board
    attr_accessor :symbol

    def initialize
      @board = (1..9).each_slice(3).to_a
    end

    def next_move(value)
      values = grid.select { |k| k == value }.values.flatten
      @board[values.first][values.last] = symbol
    end

    def grid_draw
      @board.each { |el| puts "## #{el} ##" }
    end

    def win_positions?
      horizontal || vertical || diagonals
    end

    def no_free_ceels?
      true if @board.flatten.all? { |el| el.class == String }
    end

    def check_free_cell(value)
      values = grid.select { |k| k == value }.values.flatten
      @board[values.first][values.last].class == Fixnum
    end

    private

    def horizontal
      @board.any? &WIN_POS
    end

    def vertical
      @board.transpose.any? &WIN_POS
    end

    def diagonals
      [[board[0][0], board[1][1], board[2][2]],
       [board[0][2], board[1][1], board[2][0]]].any? &WIN_POS
    end

    def grid
      hash = {
        1 => [0, 0],
        2 => [0, 1],
        3 => [0, 2],
        4 => [1, 0],
        5 => [1, 1],
        6 => [1, 2],
        7 => [2, 0],
        8 => [2, 1],
        9 => [2, 2]
      }
    end
  end
end

