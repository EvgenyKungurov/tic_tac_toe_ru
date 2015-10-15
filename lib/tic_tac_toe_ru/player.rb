# coding: utf-8
module TicTacToeRu
	class Player
		attr_reader :name, :symbol
		NAME = %w(Квася Кпутя Коко)

		def initialize(data = {})
			@name = if data.has_key? :name
                data.fetch(:name)
              else
                NAME.sample
              end
			@symbol = data.fetch(:symbol)
		end
	end
end
