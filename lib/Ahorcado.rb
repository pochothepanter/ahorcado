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
		if @letraCorrecta
			completarPalabra(letra)
		else
			@intentos+= 1
		end
		@letraCorrecta
	end

	def completarPalabra(letra)
		i=0
		@palabra.each_char do
			|letraPalabra|
			if letra.upcase == letraPalabra.upcase
				@estadoPalabra[i] = letra.upcase
			end
			i = i + 1
		end
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

	def ganaste
		@estadoPalabra.each do
			|letra|
			if nil == letra
				return false
			end
		end
		return true
	end
end
