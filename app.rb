require 'sinatra'
require './lib/Ahorcado'

get '/' do
	@@palabra="hola"
	@@resultado=""
	@@ahorcado = Ahorcado.new(@@palabra)
    @intentos=@@ahorcado.intentos
	@@imagen=""
	@estadoPalabra = @@ahorcado.estadoPalabra
	erb :juego
	
end

get '/ganaste' do
    erb :ganaste
end

get '/perdiste' do
    erb :perdiste
end

post '/ingresarLetra' do	

	@@intentos=1
	letra = params[:letra]
	resultado = @@ahorcado.ingresa(letra)
	if @@ahorcado.ganaste

		 erb :ganaste
	else
		if resultado
			@@resultado="correcta"
		else
			if @@ahorcado.perdiste
				return erb :perdiste
			else
				@@resultado="incorrecta"
			end	   
		end
		@intentos=@@ahorcado.intentos
		@estadoPalabra = @@ahorcado.estadoPalabra
 	    erb :juego
	end
end
