class Ahorcado
	attr_accessor :palabra

	def initialize(palabra)
		@palabra=palabra
		@estadoPalabra = []
		@intentos=0
		@palabra.length.times {@estadoPalabra.push(nil)}
	end

	def ingresa(letra)
		@letraCorrecta = @palabra.include?(letra)		
		if @letraCorrecta == false
			@intentos+= 1
		end
		@letraCorrecta
	end

	def intentos
		@intentos
	end

	def perdiste
		@intentos > 5
	end

	def estadoPalabra
		@estadoPalabra
	end
end
