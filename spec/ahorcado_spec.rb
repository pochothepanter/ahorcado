#encoding: UTF-8
require './lib/Ahorcado'
describe Ahorcado do
	it 'inicio ahorcado con hola' do
		a = Ahorcado.new("hola")
		expect(a.palabra).to eq "hola"
	end
	it 'cuando ingresa una letra que esta en la palabra devuelve true' do
		a = Ahorcado.new("hola")
		resultado=a.ingresa("h")
		expect(resultado).to be true
	end
	it 'cuando ingresa una letra que no esta en la palabra devuelve false' do
		a = Ahorcado.new("hola")
		resultado=a.ingresa("n")
		expect(resultado).to be false
	end
	it 'cuando ingresas 6 veces una letra incorrecta perdiste es true' do
		a = Ahorcado.new("hola")
		6.times{a.ingresa("n")}
		expect(a.perdiste).to be true
	end
	it 'Mostrar estado de la palabra vacio (array de la long de la palabra)' do
		a = Ahorcado.new("hola")
		expect(a.estadoPalabra).to eq [nil,nil,nil,nil]
	end
end
