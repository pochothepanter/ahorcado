Feature: Pagina del juego

Scenario: Mostrar pagina del juego
	Given inicio del juego
	Then debo ver "Ingresar letra"

Scenario: Mostrar contador en 0
	Given inicio del juego
	Then debo ver contador en "0"

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

Scenario: Mostrar pantalla Ganaste	
	Given Juego Ganado
	Then debo ver "Ganaste"

Scenario: Mostrar pantalla Perdiste
	Given Juego Perdido
	Then debo ver "Perdiste"

Scenario: Mostrar pantalla fin de juego	
	Given inicio del juego		
	When ingresa letra "h"
	And ingresa letra "a"
	And ingresa letra "l"
	And ingresa letra "o"
	Then debo ver "Ganaste"

Scenario: Mostrar pantalla fin de juego	perdiendo
	Given inicio del juego		
	When ingresa letra "n"
	And ingresa letra "j"
	And ingresa letra "t"
	And ingresa letra "p"
	And ingresa letra "f"
	And ingresa letra "m"

	Then debo ver "Perdiste"


