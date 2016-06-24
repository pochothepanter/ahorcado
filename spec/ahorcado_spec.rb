#encoding: UTF-8
require './lib/Ahorcado'
describe Ahorcado do
	it 'inicio ahorcado con hola' do
		a = Ahorcado.new("hola")
		expect(a.palabra).to eq "hola"
	end
	it 'cuando ingresa una letra que esta en la plabra devuelve true' do
		a = Ahorcado.new("hola")
		resultado=a.ingresa("h")
		expect(resultado).to be true
	end
	it 'cuando ingresa una letra que no esta en la plabra devuelve false' do
		a = Ahorcado.new("hola")
		resultado=a.ingresa("n")
		expect(resultado).to be false
	end
end
