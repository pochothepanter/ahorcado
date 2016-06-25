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
	letra = params[:letra]
	resultado = @@ahorcado.ingresa(letra)
	if @@ahorcado.ganaste
		 erb :ganaste
	else
		if resultado
			@@resultado="correcta"
		else
			@@resultado="incorrecta"
		end	
    	erb :juego
	end
end
