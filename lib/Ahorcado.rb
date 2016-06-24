class Ahorcado
	attr_accessor :palabra

	def initialize(palabra)
		@palabra=palabra	
	end
	def ingresa(letra)
		@palabra.include?(letra)
	end
end
