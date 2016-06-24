require 'sinatra'
require './lib/Ahorcado'

get '/' do
	@@palabra="hola"
	@@resultado=""
	@@intentos=0
	@@ahorcado = Ahorcado.new(@@palabra)
    erb :juego
	
end

post '/ingresarLetra' do	
	@@intentos=1
	if @@ahorcado.ingresa(params[:letra])
		@@resultado="correcta"
	else
		@@resultado="incorrecta"
	end
	
    erb :juego
end
