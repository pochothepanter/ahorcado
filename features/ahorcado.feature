Feature: Pagina del juego

Scenario: Mostrar pagina del juego
	Given inicio del juego
	Then debo ver "Ingresar letra"
	And debo ver horca

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

Scenario: Ver Cabeza con 1 intento fallido
	Given inicio del juego
	When ingresa letra "n"
	Then debo ver contador en "1"
	And debo ver cabeza

Scenario: Ver Cabeza con 2 intentos fallidos
	Given inicio del juego
	When ingresa letra "n"
	And ingresa letra "n"
	Then debo ver contador en "2"
	And debo ver cuerpo

Scenario: Ver Cabeza con 4 intentos fallidos
	Given inicio del juego
	When ingresa letra "n"
	And ingresa letra "n"
	And ingresa letra "a"
	And ingresa letra "x"
	And ingresa letra "p"
	Then debo ver contador en "4"
	And debo ver brazo dos

Scenario: Ver Cabeza con 5 intentos fallidos
	Given inicio del juego
	When ingresa letra "n"
	And ingresa letra "h"
	And ingresa letra "n"
	And ingresa letra "a"
	And ingresa letra "x"
	And ingresa letra "p"
	And ingresa letra "v"
	Then debo ver contador en "5"
	And debo ver pierna uno

Scenario: Mostrar pantalla Ganaste	
	Given Juego Ganado
	Then debo ver "Ganaste"

Scenario: Mostrar pantalla Perdiste
	Given Juego Perdido
	Then debo ver "Perdiste"
	And debo ver pierna dos

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
	And debo ver pierna dos

Scenario: Estado inicial de palabra
	Given inicio del juego
	Then debo ver "_ _ _ _"


