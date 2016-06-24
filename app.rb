require 'sinatra'

get '/' do
	@@palabra="hola"
	@@resultado=""
	
    erb :juego
	
end

post '/ingresarLetra' do
	@@resultado="correcta"
	if params[:letra] == "j"
		@@resultado="incorrecta"
	end
    erb :juego
end
