class Ahorcado
	attr_accessor :palabra

	def initialize(palabra)
		@palabra=palabra
		@estadoPalabra = []
		@intentos=0
		@palabra.length.times {@estadoPalabra.push(nil)}
		@indicesAcertados=[]
	end

	def ingresa(letra)
		@letraCorrecta = @palabra.include?(letra)	
		if @letraCorrecta
			buscarIndicesEncontrado(letra)
		else
			@intentos+= 1
		end
		@letraCorrecta
	end

	def buscarIndicesEncontrado(letra)
		indicesEncontrados = (0 ... @palabra.length).find_all { |i| @palabra[i,1].upcase == letra.upcase }
		if (@indicesAcertados & indicesEncontrados).empty?			
			@indicesAcertados << indicesEncontrados
			@indicesAcertados.flatten!
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
		@indicesAcertados.length == @palabra.length
	end
end
