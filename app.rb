require 'sinatra'
require './lib/Ahorcado'

get '/' do
	@@palabra="hola"
	@@resultado=""
	@@ahorcado = Ahorcado.new(@@palabra)
    @intentos=@@ahorcado.intentos
	erb :juego
	
end

get '/ganaste' do
    erb :ganaste
end

get '/perdiste' do
    erb :perdiste
end

post '/ingresarLetra' do	
	if params[:letra] == "o"
		 erb :ganaste
	else
		if @@ahorcado.ingresa(params[:letra])
			@@resultado="correcta"
		else
			if @@ahorcado.perdiste
				return erb :perdiste
			else
				@@resultado="incorrecta"
			end	   
		end
		@intentos=@@ahorcado.intentos
 	    erb :juego
	end
end
