# coding: utf-8
module TicTacToeRu
	class Player
		attr_reader :name, :symbol
		NAMES = %w(Квася Кпутя Коко)

		def initialize(data = {})
			@name = if data.has_key? :name
                data.fetch(:name)
              else
                NAMES.sample
              end
			@symbol = data.fetch(:symbol)
		end
	end
end
