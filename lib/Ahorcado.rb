class Ahorcado
	attr_accessor :palabra

	def initialize(palabra)
		@palabra=palabra
		@intentos=0
	end
	def ingresa(letra)
		@letraCorrecta = @palabra.include?(letra)		
		if @letraCorrecta == false
			@intentos+= 1
		end
		@letraCorrecta
	end
	def perdiste
		@intentos > 5
	end
end
