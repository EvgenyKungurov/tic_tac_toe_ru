# coding: utf-8
module TicTacToeRu
  class Player
    NAMES = %w(Квася Кпутя Коко)

    attr_reader :name, :symbol

    def initialize(data = {})
      @name =
        if data.key? :name
          data.fetch(:name)
        else
          NAMES.sample
        end
      @symbol = data.fetch(:symbol)
    end
  end
end
