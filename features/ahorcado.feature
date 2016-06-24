Feature: Pagina del juego

Scenario: Mostrar pagina del juego
	Given inicio del juego
	Then debo ver "Ingresar letra"

Scenario: Ingresar Letra
	Given inicio del juego
	When ingresa letra "a"
	Then debo ver "correcta"

Scenario: Ingresar Letra
	Given inicio del juego
	When ingresa letra "j"
	Then debo ver "incorrecta"

Scenario: Incrementar contador de intentos
	Given inicio del juego
	When ingresa letra "j"
	Then debo ver contador en "1"



#Scenario: Mostrar pantalla fin de juego	
#	Given inicio del juego		
#	When ingresa letra "h"
#	And ingresa letra "a"
#	And ingresa letra "l"
#	And ingresa letra "o"
#	Then debo ver "Ganaste"

