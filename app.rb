require 'sinatra'
require './lib/Ahorcado'

get '/' do
	@@palabra="hola"
	@@resultado=""
	@@intentos=0
	@@ahorcado = Ahorcado.new(@@palabra)
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
	if params[:letra] == "o"
		 erb :ganaste
	else
		if @@ahorcado.ingresa(params[:letra])
			@@resultado="correcta"
		else
			@@resultado="incorrecta"
		end	
    	erb :juego
	end
end
