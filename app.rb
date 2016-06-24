require 'sinatra'
require './lib/Ahorcado'

get '/' do
	@@palabra="hola"
	@@resultado=""
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
	if @@ahorcado.ingresa(params[:letra])
		@@resultado="correcta"
	else
		@@resultado="incorrecta"
	end
	
    erb :juego
end
