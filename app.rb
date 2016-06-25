require 'sinatra'
require './lib/Ahorcado'

get '/' do
	@@palabra="hola"
	@@resultado=""
	@@ahorcado = Ahorcado.new(@@palabra)
    @intentos=@@ahorcado.intentos
	@@imagen=0
	@estadoPalabra = @@ahorcado.estadoPalabra
	erb :juego
	
end

get '/ganaste' do
    erb :ganaste
end

get '/perdiste' do
	@@imagen=6
    erb :perdiste
end

post '/ingresarLetra' do	
	
	letra = params[:letra]
	esCorrecta = @@ahorcado.ingresa(letra)
	if @@ahorcado.ganaste
		 erb :ganaste
	else
		if esCorrecta
			@@resultado="correcta"
		else
			if @@ahorcado.perdiste
				return erb :perdiste
			else
				@@resultado="incorrecta"
				
			end  
		end
		@@imagen = @@ahorcado.intentos
		@intentos=@@ahorcado.intentos
		@estadoPalabra = @@ahorcado.estadoPalabra
 	    erb :juego
	end
end
